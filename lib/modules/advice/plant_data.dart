class Plant {
  String name;
  String careAdvice;

  Plant({required this.name, required this.careAdvice});
}

List<Plant> plantList = [
    Plant(name: 'Rose', careAdvice: """Sunlight:

Roses generally need at least 6 hours of direct sunlight each day. Plant them in a location with full sun exposure.
Soil:

Well-draining soil is crucial for roses. A mix of garden soil and organic compost works well. Ensure good drainage to prevent root rot.
Watering:

Water deeply and consistently. Allow the soil to dry slightly between watering, but don't let it become bone dry. Roses generally need more water during hot and dry periods.
Fertilization:

Feed with a balanced fertilizer during the growing season (spring and early summer). Stop fertilizing about six weeks before the first expected frost.
Pruning:

Regular pruning helps maintain the shape, remove dead or diseased wood, and encourage new growth. Prune in late winter or early spring before new growth begins.
Pest and Disease Control:

Keep an eye out for common pests like aphids and diseases like blackspot. Treat promptly with appropriate insecticides or fungicides."""),
    Plant(name: 'Lily', careAdvice: """Sunlight:

Lilies prefer full sun to partial shade. Plant them where they receive at least 6 hours of sunlight a day.
Soil:

Well-draining soil is essential. Add organic matter like compost to improve soil fertility and drainage.
Watering:

Lilies like consistently moist soil. Water deeply when the soil surface feels dry, but avoid waterlogging.
Fertilization:

Fertilize lilies in the spring as new growth emerges and again after they finish blooming. Use a balanced, slow-release fertilizer.
Mulching:

Mulch around lily plants to help retain soil moisture, suppress weeds, and regulate soil temperature.
Deadheading:

Remove spent flowers to encourage more blooms and prevent seed formation. Cut back the entire stem once the flowering season is over."""),
    Plant(name: 'Succulent', careAdvice: """Sunlight:

Most succulents prefer bright, indirect light. A few hours of direct sunlight each day is usually beneficial.
Soil:

Use a well-draining soil mix specifically designed for succulents or cacti. A mix of potting soil and perlite or sand works well.
Watering:

Allow the soil to dry completely between watering. Overwatering is a common issue with succulents, so err on the side of underwatering.
Container:

Plant succulents in containers with drainage holes to prevent waterlogging. Use pots with good airflow to promote root health.
Fertilization:

Fertilize sparingly, usually during the growing season (spring and summer). Use a diluted, balanced fertilizer.
Temperature:

Most succulents prefer temperatures between 60°F to 80°F (15°C to 27°C). Protect them from frost, as many succulents are sensitive to cold."""),
    // Add more plants as needed
  ];

