const mongoose = require('mongoose')

// Subdocument schema for encounter combatants
const combatantSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true
  },
  initiative: {
    type: Number,
    required: true,
    min: 1
  }
})

const encounterSchema = new mongoose.Schema({
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  },
  // Array of combatants in the encounter
  combatants: [combatantSchema]
}, {
  timestamps: true
})

module.exports = mongoose.model('Encounter', encounterSchema)
