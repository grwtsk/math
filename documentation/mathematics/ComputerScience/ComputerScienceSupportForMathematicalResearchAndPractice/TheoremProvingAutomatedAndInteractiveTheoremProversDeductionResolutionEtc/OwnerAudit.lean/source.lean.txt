import Lean

open Lean Elab Command

/-
The Python replay imports every frozen project module before this command.
Ownership, rather than namespace, includes private/generated declarations.

Default and historical one-helper permissions are retained. The separate
optional partial-helper profile is EXACTLY the following 15 pinned pairs.
Lean 4.33 creates partial runtime bodies via addAndCompilePartialRec and
selects them via Compiler.mkUnsafeRecName; this is not implemented_by.
The original remains a safe kernel definition. No runtime-equivalence theorem
is claimed. The replay must independently verify actual owner-file hashes;
this operational observer checks the profile permission and kernel metadata.
Its code is outside the GRWTSK mathematical owner scope.
-/
private structure GeneratedPartialRuntimeEntry where
  helper : Name
  original : Name
  owner : Name
  ownerSourceHash : String

private def generatedPartialRuntimeEntries : Array GeneratedPartialRuntimeEntry := #[
  { helper := `GRWTSK.Algebra.orderedProduct._unsafe_rec,
    original := `GRWTSK.Algebra.orderedProduct,
    owner := `GRWTSK.Algebra.OrderedProduct,
    ownerSourceHash := "97997c1246d32731c34a6decf10d3cb4a90d0c28281e174ab28fd4abe4c6574d" },
  { helper := `GRWTSK.Analysis.Waveform.Scheduling.count._unsafe_rec,
    original := `GRWTSK.Analysis.Waveform.Scheduling.count,
    owner := `GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy,
    ownerSourceHash := "851cb36b5b9db3a4e2695e4c4164dbca4af83dcc913caebd41160fd4db8f882f" },
  { helper := `GRWTSK.Analysis.Waveform.Scheduling.clock._unsafe_rec,
    original := `GRWTSK.Analysis.Waveform.Scheduling.clock,
    owner := `GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy,
    ownerSourceHash := "851cb36b5b9db3a4e2695e4c4164dbca4af83dcc913caebd41160fd4db8f882f" },
  { helper := `GRWTSK.Analysis.Waveform.Scheduling.debt._unsafe_rec,
    original := `GRWTSK.Analysis.Waveform.Scheduling.debt,
    owner := `GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy,
    ownerSourceHash := "851cb36b5b9db3a4e2695e4c4164dbca4af83dcc913caebd41160fd4db8f882f" },
  { helper := `GRWTSK.RiemannHypothesis.BranchSequenceRealization.denominator._unsafe_rec,
    original := `GRWTSK.RiemannHypothesis.BranchSequenceRealization.denominator,
    owner := `GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators,
    ownerSourceHash := "3f18269367c2ef839a97591d1d5d36198c6c4c6faff132120f45659c19e94a03" },
  { helper := `GRWTSK.RiemannHypothesis.BranchSequenceRealization.spikeDenominator._unsafe_rec,
    original := `GRWTSK.RiemannHypothesis.BranchSequenceRealization.spikeDenominator,
    owner := `GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators,
    ownerSourceHash := "3f18269367c2ef839a97591d1d5d36198c6c4c6faff132120f45659c19e94a03" },
  { helper := `GRWTSK.RiemannHypothesis.BranchSequenceRealization.numerator._unsafe_rec,
    original := `GRWTSK.RiemannHypothesis.BranchSequenceRealization.numerator,
    owner := `GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators,
    ownerSourceHash := "3f18269367c2ef839a97591d1d5d36198c6c4c6faff132120f45659c19e94a03" },
  { helper := `GRWTSK.RiemannHypothesis.BranchSequenceRealization.batchClock._unsafe_rec,
    original := `GRWTSK.RiemannHypothesis.BranchSequenceRealization.batchClock,
    owner := `GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators,
    ownerSourceHash := "3f18269367c2ef839a97591d1d5d36198c6c4c6faff132120f45659c19e94a03" },
  { helper := `GRWTSK.ProofHorizon.CorkscrewChamberCap.affectedClosure._unsafe_rec,
    original := `GRWTSK.ProofHorizon.CorkscrewChamberCap.affectedClosure,
    owner := `GRWTSK.Order.Closure.FiniteDependencyClosure,
    ownerSourceHash := "e78778c5b623abadfc23a668517cb4b1652ef6365962263b8440f8a156af5dec" },
  { helper := `GRWTSK.ProofHorizon.CorkscrewChamberCap.routeClosureFrom._unsafe_rec,
    original := `GRWTSK.ProofHorizon.CorkscrewChamberCap.routeClosureFrom,
    owner := `GRWTSK.Logic.Inference.FiniteRuleSystems,
    ownerSourceHash := "6bbe978cc4ba18d4bfefbadab3a7b256cdec7dffb6b7de9da18a688d9c4fa986" },
  { helper := `GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.totalRoundCost._unsafe_rec,
    original := `GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.totalRoundCost,
    owner := `GRWTSK.DynamicalSystems.TransitionSystems.BudgetResetCounterexamples,
    ownerSourceHash := "155e4fd202fb590cbdbdf4cb26100c17e72452418be0497ba37b301f662b3e42" },
  { helper := `GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.sessionRun._unsafe_rec,
    original := `GRWTSK.ProofHorizon.CorkscrewChamberCap.RestartBudgetBoundary.sessionRun,
    owner := `GRWTSK.DynamicalSystems.TransitionSystems.BudgetResetCounterexamples,
    ownerSourceHash := "155e4fd202fb590cbdbdf4cb26100c17e72452418be0497ba37b301f662b3e42" },
  { helper := `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct._unsafe_rec,
    original := `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct,
    owner := `GRWTSK.LinearAlgebra.CocycleProduct,
    ownerSourceHash := "64ebbd43849bfffee9f92d74f271c55a1ffcba28c1b7debcf491a901ddfff67b" },
  { helper := `GRWTSK.Analysis.Waveform.workClock._unsafe_rec,
    original := `GRWTSK.Analysis.Waveform.workClock,
    owner := `GRWTSK.Logic.FiniteSequences.PrefixCoverage,
    ownerSourceHash := "a6ee772e91591f1e51ad01a4a0ff68df9f2455d4c0c168a660159fb0fd55485f" },
  { helper := `GRWTSK.RiemannHypothesis.BranchFrequencyExistence.finiteTail._unsafe_rec,
    original := `GRWTSK.RiemannHypothesis.BranchFrequencyExistence.finiteTail,
    owner := `GRWTSK.NumberTheory.ContinuedFractions.FrequencyRealization,
    ownerSourceHash := "fe53414320a78931bf2add8a168544df853ce7bd10b82b2cf257082ceb77e4be" }]

private def generatedPartialPairIsValid (env : Environment) (owner : Name)
    (info : ConstantInfo) (entry : GeneratedPartialRuntimeEntry) : Bool :=
  info.name == entry.helper && owner == entry.owner &&
  Compiler.mkUnsafeRecName entry.original == entry.helper &&
  match info, env.find? entry.original with
  | .defnInfo helper, some (.defnInfo original) =>
      helper.safety == .partial && original.safety == .safe &&
      Expr.equal info.type original.type && info.levelParams == original.levelParams &&
      match env.getModuleIdxFor? info.name, env.getModuleIdxFor? entry.original with
      | some helperIdx, some originalIdx =>
          env.header.moduleNames[helperIdx]! == entry.owner &&
          env.header.moduleNames[originalIdx]! == entry.owner
      | _, _ => false
  | _, _ => false

private def auditMathTrust (ownerSourceHash profilePermission : String) : CommandElabM Unit := do
  let env ← getEnv
  let owners := env.header.moduleNames
  unless env.header.moduleData.size == owners.size do
    throwError "incomplete module ownership table"
  let runtimeName := `GRWTSK.Algebra.orderedProduct._unsafe_rec
  let runtimeOwner := `GRWTSK.Algebra.OrderedProduct
  let acceptedSourceHash := "97997c1246d32731c34a6decf10d3cb4a90d0c28281e174ab28fd4abe4c6574d"
  let acceptedProfile := "152bb08f88cf17eb7b190c048d0e4a82fdbde2d01696701d24b5ddc7c8aa351b"
  unless profilePermission.isEmpty || profilePermission == acceptedProfile do
    throwError "unapproved generated-partial profile permission"
  let profileEnabled := profilePermission == acceptedProfile
  if profileEnabled && !ownerSourceHash.isEmpty then
    throwError "legacy and generated-partial runtime profiles are mutually exclusive"
  let referenceNames := if profileEnabled then
    generatedPartialRuntimeEntries.map (·.helper) else #[runtimeName]
  let mut violations : Array String := #[]
  if profileEnabled then
    for entry in generatedPartialRuntimeEntries do
      unless owners.contains entry.owner do
        violations := violations.push s!"missing generated-partial owner: {entry.owner}"
      match env.find? entry.helper with
      | some info =>
          unless generatedPartialPairIsValid env entry.owner info entry do
            violations := violations.push s!"invalid generated-partial pair: {entry.helper}"
      | none =>
          violations := violations.push s!"missing generated-partial helper: {entry.helper}"
  let mut count := 0
  let mut moduleCount := 0
  for (data, owner) in env.header.moduleData.toList.zip owners.toList do
    if (`GRWTSK).isPrefixOf owner then
      moduleCount := moduleCount + 1
      let declarations := data.constants.toList.filter fun info =>
        match env.getModuleIdxFor? info.name with
        | some idx => owners[idx]! == owner
        | none => false
      logInfo m!"MATH_TRUST_MODULE::{(Json.mkObj [
        ("module", toJson owner.toString),
        ("declarations", toJson declarations.length)]).compress}"
      for info in declarations do
        let name := info.name
        let isDefinition := match info with
          | .defnInfo _ => true
          | _ => false
        -- Only an explicit exact entry can qualify. A suffix is insufficient.
        let legacyKnownRuntime := !profileEnabled && name == runtimeName &&
          owner == runtimeOwner && isDefinition && info.isUnsafe &&
          !info.isPartial && ownerSourceHash == acceptedSourceHash
        let profileKnownRuntime := profileEnabled &&
          (generatedPartialRuntimeEntries.any fun entry =>
            generatedPartialPairIsValid env owner info entry)
        let knownRuntime := legacyKnownRuntime || profileKnownRuntime
        let emittedOwnerHash :=
          if profileEnabled then
            match generatedPartialRuntimeEntries.find? (fun entry => entry.owner == owner) with
            | some entry => entry.ownerSourceHash
            | none => ""
          else
            ownerSourceHash
        if info.isUnsafe && !knownRuntime then
          violations := violations.push s!"unsafe declaration: {name}"
        if info.isPartial && !profileKnownRuntime then
          violations := violations.push s!"partial declaration: {name}"
        match info with
        | .axiomInfo _ => violations := violations.push s!"new axiom: {name}"
        | _ => pure ()
        let axioms ← collectAxioms name
        for ax in axioms do
          unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
            violations := violations.push s!"unapproved axiom {ax} in {name}"
        -- Existing JSON field is retained. In the optional profile it means
        -- direct TYPE OR VALUE references to any of the 15 exact helpers.
        -- In the legacy/default mode its original value-only meaning remains.
        let referencesRuntime := referenceNames.any fun helperName =>
          (profileEnabled && info.type.getUsedConstants.contains helperName) ||
          match info.value? true with
          | some value => value.getUsedConstants.contains helperName
          | none => false
        if profileEnabled && referencesRuntime &&
            generatedPartialRuntimeEntries.any (fun entry => entry.original == name) then
          violations := violations.push s!"paired safe original directly references runtime helper: {name}"
        let isTheorem := match info with
          | .thmInfo _ => true
          | _ => false
        if isTheorem && referencesRuntime then
          violations := violations.push s!"theorem directly references selected runtime helper: {name}"
        let type ← liftTermElabM do Meta.ppExpr info.type
        let kind := match info with
          | .thmInfo _ => "theorem"
          | .defnInfo _ => "definition"
          | .opaqueInfo _ => "opaque"
          | .axiomInfo _ => "axiom"
          | .ctorInfo _ => "constructor"
          | .recInfo _ => "recursor"
          | .inductInfo _ => "inductive"
          | _ => "generated"
        let entry := Json.mkObj [
          ("module", toJson owner.toString), ("name", toJson name.toString),
          ("kind", toJson kind), ("type", toJson type.pretty),
          ("unsafe", toJson info.isUnsafe), ("partial", toJson info.isPartial),
          ("known_generated_runtime_helper", toJson knownRuntime),
          ("runtime_helper_owner_source_sha256", toJson emittedOwnerHash),
          ("direct_value_reference_to_runtime_helper", toJson referencesRuntime),
          ("axioms", toJson (axioms.toList.map Name.toString))]
        logInfo m!"MATH_TRUST_DECL::{entry.compress}"
        count := count + 1
    else
      logInfo m!"MATH_TRUST_DEPENDENCY_MODULE::{owner}"
  logInfo m!"MATH_TRUST_COUNT::{count}"
  logInfo m!"MATH_TRUST_MODULE_COUNT::{moduleCount}"
  if moduleCount == 0 || count == 0 then throwError "empty project census"
  unless violations.isEmpty do
    throwError "project trust audit failed: {violations.toList}"

-- Preserve the one-string default/historical command exactly at its call site.
elab (name := mathTrustLegacy) "#audit_math_trust" ownerSource:str : command =>
  auditMathTrust ownerSource.getString ""

-- This separately opted-in syntax cannot be enabled by a helper-name suffix.
elab (name := mathTrustGeneratedPartial) "#audit_math_trust"
    ownerSource:str profilePermission:str : command =>
  auditMathTrust ownerSource.getString profilePermission.getString
