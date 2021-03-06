package com.rusefi.ui;

import com.irnems.core.MessagesCentral;
import com.rusefi.ui.widgets.AnyCommand;
import com.rusefi.ui.widgets.IdleLabel;

import javax.swing.*;
import javax.swing.text.BadLocationException;
import javax.swing.text.Document;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * This panel displays plain-text 'msg' plain-text debug messages
 * <p/>
 * <p/>
 * Date: 4/27/13
 * (c) Andrey Belomutskiy
 *
 * @see AnyCommand
 */
public class MsgPanel {
    private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH_mm");
    private static final int MAX_SIZE = 50000;

    private final JTextPane msg = new JTextPane();
    private boolean isPaused;
    private final JPanel content = new JPanel(new BorderLayout()) {
        @Override
        public Dimension getPreferredSize() {
            Dimension size = super.getPreferredSize();
            return new Dimension(250, size.height);
        }
    };

    public MsgPanel(boolean needsRpmControl) {
        content.setBorder(BorderFactory.createLineBorder(Color.green));
        JScrollPane pane = new JScrollPane(msg, JScrollPane.VERTICAL_SCROLLBAR_ALWAYS, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);

        JPanel middlePanel = new JPanel(new BorderLayout());
        middlePanel.add(pane, BorderLayout.CENTER);
        if (needsRpmControl)
            middlePanel.add(new RecentCommands().getContent(), BorderLayout.EAST);


        content.add(middlePanel, BorderLayout.CENTER);
        MessagesCentral.getInstance().addListener(new MessagesCentral.MessageListener() {
            @Override
            public void onMessage(Class clazz, String message) {
                final String date = DATE_FORMAT.format(new Date());
                if (!isPaused)
                    append(date + ": " + clazz.getSimpleName() + ": " + message);
            }
        });

        JButton resetButton = new JButton("clear");
        resetButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent event) {
                Document d = msg.getDocument();
                clearMessages(d);
            }
        });

        final JButton pauseButton = new JButton("pause");
        pauseButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                isPaused = !isPaused;
                UiUtils.setPauseButtonText(pauseButton, isPaused);
            }
        });

        JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.CENTER, 5, 0));
        buttonPanel.add(resetButton);
        buttonPanel.add(pauseButton);
        buttonPanel.add(new AnyCommand());
        if (needsRpmControl)
            buttonPanel.add(new RpmControl().getContent());
        content.add(buttonPanel, BorderLayout.NORTH);

        JPanel statsPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));

        statsPanel.add(new RpmControl().getContent());
        statsPanel.add(new IdleLabel());
        statsPanel.add(new WarningPanel().getPanel());

        content.add(statsPanel, BorderLayout.SOUTH);
    }

    public JPanel getContent() {
        return content;
    }

    private void clearMessages(Document d) {
        try {
            d.remove(0, d.getLength());
        } catch (BadLocationException e) {
            throw new IllegalStateException(e);
        }
    }

    private void append(String line) {
        Document d = msg.getDocument();
        if (d.getLength() > MAX_SIZE)
            clearMessages(d);
        try {
            d.insertString(d.getLength(), line + "\r\n", null);
            msg.select(d.getLength(), d.getLength());
        } catch (BadLocationException e) {
            throw new IllegalStateException(e);
        }
    }
}
