echo "Installing requirements"
pip install -r requirements.txt
echo "Running training"
python train.py
echo "FINISHED training"
echo "creating report"
echo "## Model Metrics" > report.md

#    - cat metrics.txt >> report.md
#    - echo "## Data Viz" >> report.md
#    - cml-publish feature_importance.png --md >> report.md
#    - cml-publish residuals.png --md >> report.md
#    - cml-send-comment report.md

