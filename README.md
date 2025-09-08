┌──(wizard㉿kali)-[~/Videos/alphasSite/scripts]
└─$ ./file_finder.sh 
Choose search option:
1. Do you remember the whole file name?
2. Do you remember only part of the name?
Enter choice [1/2]: 2
Enter the filename (or part of it): milton
Searching... this may take a while.
[sudo] password for wizard: 
/home/wizard/Desktop/------/MILTON MICHAEL JOHN- Field Report.docx_0.docx
/home/wizard/Desktop/------/MILTON%20MICHAEL%20JOHN-%20Field%20Report.docx_0.odt
/usr/share/doc/python3-networkx/html/reference/algorithms/generated/networkx.algorithms.tournament.hamiltonian_path.html
/usr/share/dvb/dvb-legacy/dvb-t/nz-Hamilton
/usr/share/dvb/dvb-t/nz-Hamilton
                                                                                                                                                                                         
┌──(wizard㉿kali)-[~/Videos/alphasSite/scripts]
└─$ ./find_by_ext.sh [file name]


for the pcap u need to eddit this part hehe!!!
 # Look for MetaCTF{...} patterns
        if "MetaCTF{" in text:
            start = text.find("MetaCTF{")#put any word ur looking for
            end = text.find("}", start)
            if end != -1:
                flag = text[start:end+1]
                print("Flag found:", flag)
