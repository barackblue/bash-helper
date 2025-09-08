from scapy.all import rdpcap, Raw

# Path to your PCAP file
pcap_file = "babysomething.pcap"

# Load all packets
packets = rdpcap(pcap_file)

# Loop through packets
for pkt in packets:
    # Check if packet has raw payload
    if Raw in pkt:
        data = pkt[Raw].load
        # Convert bytes to string safely
        try:
            text = data.decode('utf-8', errors='ignore')
        except:
            continue
        
        # Look for MetaCTF{...} patterns
        if "MetaCTF{" in text:
            start = text.find("MetaCTF{")#put any word ur looking for
            end = text.find("}", start)
            if end != -1:
                flag = text[start:end+1]
                print("Flag found:", flag)
