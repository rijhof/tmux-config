#!/bin/bash
# Generate window list with emoji numbers

emoji_num() {
    case $1 in
        1) echo "1️⃣" ;;
        2) echo "2️⃣" ;;
        3) echo "3️⃣" ;;
        4) echo "4️⃣" ;;
        5) echo "5️⃣" ;;
        6) echo "6️⃣" ;;
        7) echo "7️⃣" ;;
        8) echo "8️⃣" ;;
        9) echo "9️⃣" ;;
        10) echo "🔟" ;;
        *) echo "$1" ;;
    esac
}

# Colors (Catppuccin)
INACTIVE_FG="#6c7086"
ACTIVE_BG="#313244"
ACTIVE_FG="#89dceb"
RESET_BG="#1e1e2e"

output=""
while read idx name active; do
    emoji=$(emoji_num $idx)
    if [ -n "$output" ]; then
        output="${output} "
    fi
    if [ "$active" = "1" ]; then
        output="${output}#[fg=${ACTIVE_BG},bg=${RESET_BG}]#[bg=${ACTIVE_BG},fg=${ACTIVE_FG},bold] ${emoji}  ${name} #[fg=${ACTIVE_BG},bg=${RESET_BG}]"
    else
        output="${output}#[fg=#45475a,bg=${RESET_BG}]#[bg=#45475a,fg=${INACTIVE_FG}] ${emoji}  ${name} #[fg=#45475a,bg=${RESET_BG}]"
    fi
done < <(tmux list-windows -F "#{window_index} #{window_name} #{window_active}")
echo -n "$output"
