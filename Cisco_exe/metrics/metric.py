from datadog import initialize, api
import time
import subprocess

options = {
    'api_key': '...',
    'api_host': '...',
}

command = "ps -ef | wc -l"

output = subprocess.check_output(command, shell=True)

num_processes = int(output.decode().strip())

initialize(**options)

response = api.Metric.send(
                            metric='basic.datadog.metric',
                            points=[(int(time.time()), num_processes)],
                            tags=["env:local"],
                            type='gauge'
                          )