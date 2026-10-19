module

public import Surface.Core.NetworkSurgery.Convergence

/-! # Explicit authority firewalls for finite game artifacts -/

public section

namespace Surface.Core.NetworkSurgery

@[expose] def BinaryLogicMatrixHasSourceAuthority
    (_program : BracketProgram) : Prop := False

@[expose] def FiniteSurgeryEnergyHasTheoremAuthority
    (_energy : RepairEnergy) : Prop := False

@[expose] def GameScoreHasKernelAuthority (_score : Int) : Prop := False

@[expose] def NetworkSurgeryTransportHasAnalyticAuthority
    {Payload : Type*} (_publication : NetworkSurgeryPublication Payload) : Prop := False

@[expose] def ExactQuantizationHasSourceAuthority
    (_coordinate : ExactRationalCoordinate) : Prop := False

@[surface_novel, surface_published]
theorem binaryLogicMatrix_has_no_source_authority (program : BracketProgram) :
    ¬ BinaryLogicMatrixHasSourceAuthority program := by
  simp [BinaryLogicMatrixHasSourceAuthority]

@[surface_novel, surface_published]
theorem finiteSurgeryEnergy_has_no_theorem_authority (energy : RepairEnergy) :
    ¬ FiniteSurgeryEnergyHasTheoremAuthority energy := by
  simp [FiniteSurgeryEnergyHasTheoremAuthority]

@[surface_novel, surface_published]
theorem gameScore_has_no_kernel_authority (score : Int) :
    ¬ GameScoreHasKernelAuthority score := by
  simp [GameScoreHasKernelAuthority]

@[surface_novel, surface_published]
theorem networkSurgeryTransport_has_no_analytic_authority
    {Payload : Type*} (publication : NetworkSurgeryPublication Payload) :
    ¬ NetworkSurgeryTransportHasAnalyticAuthority publication := by
  simp [NetworkSurgeryTransportHasAnalyticAuthority]

@[surface_novel, surface_published]
theorem rounding_has_no_source_authority (coordinate : ExactRationalCoordinate) :
    ¬ ExactQuantizationHasSourceAuthority coordinate := by
  simp [ExactQuantizationHasSourceAuthority]

@[surface_novel, surface_published]
theorem zeroTotalGameEnergy_does_not_create_kernelAuthority
    (energy : RepairEnergy) (_zeroEnergy : energy.vector.all (fun value => value = 0)) :
    ¬ FiniteSurgeryEnergyHasTheoremAuthority energy :=
  finiteSurgeryEnergy_has_no_theorem_authority energy

end Surface.Core.NetworkSurgery
