cd /home/runner
export PATH=/usr/bin:/bin:/tool/pandora64/bin:/usr/share/HES-SyntHESer/bin64
export HESSYNTHESR_HOME=/usr/share/HES-SyntHESer
export LM_LICENSE_FILE=27009@10.116.0.5
export HOME=/home/runner
syntHESer -file run.do  ; echo 'Creating result.zip...' && zip -r /tmp/tmp_zip_file_123play.zip . && mv /tmp/tmp_zip_file_123play.zip result.zip