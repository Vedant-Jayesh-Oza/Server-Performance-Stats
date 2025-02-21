# **Server Performance Stats Script (`server-stats.sh`)**

This script provides essential system performance statistics for a **Linux** or **macOS** system. It collects and displays:
- **CPU Usage**
- **Memory Usage** (Free vs Used including percentage)
- **Disk Usage** (Free vs Used including percentage)
- **Top 5 Processes by CPU Usage**
- **Top 5 Processes by Memory Usage**

## **📌 Features**
✔️ Works on **both Linux and macOS**  
✔️ Provides **real-time performance stats**  
✔️ Additional system details:  
   - OS Version  
   - System Uptime  
   - Load Average  
   - Logged-in Users  

---

## **📂 File Structure**
```
📁 Server_Performance_Stats
   ├── server-stats.sh    # Main script
   ├── README.md          # Documentation
```

---

## **🛠️ Installation & Usage**
### **1️⃣ Grant Execution Permission**
Before running the script, ensure it has execution permissions:
```bash
chmod +x server-stats.sh
```

### **2️⃣ Run the Script**
Execute the script using:
```bash
./server-stats.sh
```

---

## **🖥️ Sample Output**
```
========== Server Performance Stats ==========

CPU Usage:
Total CPU Usage: 12.3% used

Memory Usage:
Total: 8192MB | Used: 4200MB | Free: 3992MB | Usage: 51%

Disk Usage:
Total: 500G | Used: 120G | Free: 380G | Usage: 24%

Top 5 Processes by CPU Usage:
  PID COMMAND   %CPU
 1234 Safari    32.5
 5678 Chrome    28.1
 9012 Python    21.0
 3456 Zoom      15.6
 7890 Terminal  10.2

Top 5 Processes by Memory Usage:
  PID COMMAND   %MEM
 5678 Chrome    22.3
 1234 Safari    18.7
 9012 Python    14.5
 7890 Zoom      10.8
 3456 Terminal  8.2

========== Additional System Stats ==========

OS Version:
macOS 12.4

System Uptime:
10:42  up 3:14, 2 users

Load Average (1, 5, 15 min):
0.15 0.22 0.19

Logged-in Users:
vedantoza   console  Feb 21 08:15

========== End of Report ==========
```

---

## **💻 Compatibility**
| Feature  | Linux | macOS |
|----------|-------|-------|
| CPU Usage | ✅ | ✅ |
| Memory Usage | ✅ | ✅ |
| Disk Usage | ✅ | ✅ |
| Top 5 Processes (CPU) | ✅ | ✅ |
| Top 5 Processes (Memory) | ✅ | ✅ |
| OS Version | ✅ | ✅ |
| Uptime | ✅ | ✅ |
| Load Average | ✅ | ✅ |
| Logged-in Users | ✅ | ✅ |
---

## **📢 Notes**
This script **does not modify system settings**—it only collects and displays statistics.


