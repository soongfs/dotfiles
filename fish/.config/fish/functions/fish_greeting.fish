# function fish_greeting
#     set_color cyan
#     echo "──────────────────────────────────────────────────────────"

#     set_color green
#     echo "   User       : "(whoami)"@"(cat /etc/hostname)
#     echo "   Time       : "(date "+%Y-%m-%d %H:%M:%S")
#     echo "   Kernel     : "(uname -r)

#     # CPU 信息
#     if test -f /proc/cpuinfo
#         set cpu (grep "model name" /proc/cpuinfo | head -n 1 | sed 's/.*: //')
#         echo "   CPU        : $cpu"
#     end

#     # 内存信息
#     if test -f /proc/meminfo
#         set mem_total (grep MemTotal /proc/meminfo | awk '{print $2/1024 " MB"}')
#         echo "   Memory     : $mem_total"
#     end

#     # Git 信息
#     if git rev-parse --is-inside-work-tree >/dev/null 2>&1
#         set_color yellow
#         set branch (git rev-parse --abbrev-ref HEAD 2>/dev/null)

#         set dirty (git status --porcelain | wc -l)
#         echo "   Git        : $branch  ($dirty changes)"
#     end

#     # 文件统计
#     set_color blue
#     echo "   Directory  : "(pwd)

#     # 文件数
#     set files (count (command ls -p | grep -v / | string split '\n'))

#     # 目录数（避免错误输出）
#     set dirs (count (command ls -d */ 2>/dev/null))

#     echo "   Files      : $files files, $dirs dirs"

#     set_color cyan
#     echo "──────────────────────────────────────────────────────────"
#     set_color normal
# end
function fish_greeting
end
