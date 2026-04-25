import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'registryPortal.settings')
django.setup()

from organisation.models import Department, Team

# Departments
departments = {
    "Engineering": Department.objects.get_or_create(departmentName="Engineering")[0],
    "Cloud & Infrastructure": Department.objects.get_or_create(departmentName="Cloud & Infrastructure")[0],
    "Data & Analytics": Department.objects.get_or_create(departmentName="Data & Analytics")[0],
    "Security": Department.objects.get_or_create(departmentName="Security")[0],
    "Product & Design": Department.objects.get_or_create(departmentName="Product & Design")[0],
    "QA & Testing": Department.objects.get_or_create(departmentName="QA & Testing")[0],
}

print("✅ Departments created!")

# Teams
teams = [
    {"teamName": "Sky Recommends", "department": "Engineering"},
    {"teamName": "Sky Q Platform", "department": "Engineering"},
    {"teamName": "Sky Fibre Ops", "department": "Cloud & Infrastructure"},
    {"teamName": "Sky Data Insights", "department": "Data & Analytics"},
    {"teamName": "Sky Protect", "department": "Security"},
    {"teamName": "Sky UX Design", "department": "Product & Design"},
]

for t in teams:
    Team.objects.get_or_create(
        teamName=t["teamName"],
        defaults={"department": departments[t["department"]]}
    )

print("✅ Teams created!")
print("🎉  All data loaded successfully!")