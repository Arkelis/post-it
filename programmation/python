import os
import time

def print_progress_bar(percent: int) -> None:
    try:
        console_width = os.get_terminal_size()[0]
        bar_width = console_width - 9
        filled_bar = round(percent/100*bar_width)
        bar = "%3d" % percent + " % [" + filled_bar*"=" + (bar_width-filled_bar)*" " + "]"
    except OSError:
    	bar = "%3d" % percent + " %"
    print(bar, end='\r', flush=True)

if __name__ == "__main__":
    print("Barre de progression")
    for i in range(100):
        print_progress_bar(i+1)
        time.sleep(0.01)
    print("\nTerminé")
