configfile: "config/config.yaml"
http_url = config["http-url"]

rule http:
    output:
        "results/http_test.txt"
    message:
        "getting data file '{output}' from '{http_url}'"
    shell:
        "wget {http_url} -O {output}"
