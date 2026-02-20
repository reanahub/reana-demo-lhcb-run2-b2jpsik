rule all:
    input:
        "bmass.png",
        "jpsimass.png"

rule analyse:
    input:
        "analyse.py"
    output:
        "bmass.png",
        "jpsimass.png"
    container:
        "docker://docker.io/reanahub/reana-env-root6:6.38.00"
    shell:
        "python3 {input}"
