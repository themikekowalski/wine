echo "Installing requirements"
pip install -r requirements.txt

echo "Running training"
python train.py

echo "Creating report"
echo "## Model Metrics" >> report.md
cat metrics.txt >> report.md
echo "## Data Viz" >> report.md
cml-publish feature_importance.png --md >> report.md
cml-publish residuals.png --md >> report.md
cml-send-comment report.md

