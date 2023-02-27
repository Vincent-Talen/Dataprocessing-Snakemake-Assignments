from snakemake.remote.NCBI import RemoteProvider as NCBIRemoteProvider
NCBI = NCBIRemoteProvider(email="v.k.talen@st.hanze.nl")

configfile: "config/config.yaml"
filename = config["ncbi-file"]

rule ncbi:
    input:
        NCBI.remote(filename, db="nuccore")
    output:
        "results/{filename}"
    message:
        "getting data file '{filename}' from NCBI 'nuccore' database"
    shell:
        "cat {input} >> {output}"
