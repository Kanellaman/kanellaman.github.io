from PyPDF2 import PdfReader, PdfWriter
from datetime import datetime
import os

# Input and output file paths
input_path = "assets/resume.pdf"
output_path = "assets/resume.pdf"

# Read the original PDF
reader = PdfReader(input_path)
writer = PdfWriter()

# Copy pages to the writer
for page in reader.pages:
    writer.add_page(page)

# Set metadata
metadata = {
    "/Author": "Konstantinos Kanellakis",
    "/Title": "Resume - Konstantinos Kanellakis",
    "/CreationDate": datetime.now().strftime("D:%Y%m%d%H%M%S"),
}
writer.add_metadata(metadata)

# Write updated PDF
with open(output_path, "wb") as f:
    writer.write(f)

print(f"Updated PDF saved to: {output_path}")
