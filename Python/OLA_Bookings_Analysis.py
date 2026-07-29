import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv("data/bookings_sample.csv")

print("Shape:", df.shape)
print("\nColumns:", df.columns.tolist())
print("\nData Types:\n", df.dtypes)
print("\nFirst 5 rows:\n", df.head())

print("\nMissing Values:\n", df.isnull().sum())

print("\nBooking Status Distribution:\n", df["Booking_Status"].value_counts())

print("\nVehicle Type Distribution:\n", df["Vehicle_Type"].value_counts())

print("\nPayment Method Distribution:\n", df["Payment_Method"].value_counts())

success = df[df["Booking_Status"] == "Success"]
print("\n--- Successful Bookings Only ---")
print(f"Count: {len(success)}")
print(f"Avg Booking Value: {success['Booking_Value'].mean():.2f}")
print(f"Max Booking Value: {success['Booking_Value'].max()}")
print(f"Min Booking Value: {success['Booking_Value'].min()}")

vehicle_stats = df.groupby("Vehicle_Type").agg(
    total_bookings=("Booking_ID", "count"),
    total_revenue=("Booking_Value", "sum"),
    avg_booking_value=("Booking_Value", "mean"),
    avg_rating=("Driver_Ratings", "mean")
).round(2).sort_values("total_revenue", ascending=False)

print("\nVehicle Type Performance:\n", vehicle_stats)

canceled = df[
    (df["Canceled_Rides_by_Customer"].notna()) |
    (df["Canceled_Rides_by_Driver"].notna())
]
print(f"\nCanceled Rides: {len(canceled)} ({len(canceled)/len(df)*100:.1f}%)")

cancel_reasons = df["Canceled_Rides_by_Customer"].value_counts()
print("\nTop Customer Cancellation Reasons:\n", cancel_reasons.head())

top_pickups = df["Pickup_Location"].value_counts().head(10)
print("\nTop 10 Pickup Locations:\n", top_pickups)

avg_distance = df.groupby("Vehicle_Type")["Ride_Distance"].mean().sort_values(ascending=False)
print("\nAvg Ride Distance by Vehicle Type:\n", avg_distance)

df["Date"] = pd.to_datetime(df["Date"])
df["Hour"] = pd.to_datetime(df["Time"], format="%H:%M:%S").dt.hour
hourly_bookings = df.groupby("Hour").size()
print("\nPeak Booking Hours:\n", hourly_bookings.sort_values(ascending=False).head(5))

df.to_csv("ola_bookings_analysis_output.csv", index=False)
print("\nAnalysis complete! Output saved to ola_bookings_analysis_output.csv")
