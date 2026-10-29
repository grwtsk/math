-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckedRoleAlgebra.Variant38327c6b1f79706afe9934a9670ab713782d742ab61760e222b99c571537baf4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38327c6b1f79706afe9934a9670ab713782d742ab61760e222b99c571537baf4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CheckedRoleAlgebra.Variant38327c6b1f79706afe9934a9670ab713782d742ab61760e222b99c571537baf4","mathematical_subject":"Computation.DataStructures","original_sha256":"38327c6b1f79706afe9934a9670ab713782d742ab61760e222b99c571537baf4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Model/RolesGrammar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.CriticalInvolution

/-!
# Full model profile: finite role tables, concrete runs and grammar extraction

This profile supports one sort and nullary/unary constructors. Every transition
key is drawn from an explicitly enumerated finite universe. A partial table may
omit keys; a total table must contain every key. Duplicate keys, including two
identical rows, fail admission. The finite table is an immutable declaration:
checking its well-formedness does not prove a role assignment for a syntax tree.

The run checker reads constructors and child indices from the actual checked K2
operand. Grammar extraction uses *all* table rows, independently of the rows
visited by that run. An unaccepted root still has a legitimate role run, but it
has no accepting-language conclusion. Bounds below measure finite semantic
reference work, not Lean runtime, parser bytes, or native memory consumption.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckedRoleAlgebra.Variant38327c6b1f79706afe9934a9670ab713782d742ab61760e222b99c571537baf4

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

/-- The output is deliberately excluded from the deterministic transition key. -/
def tableRowKey (row : TableRow) : ConstructorId × List ℕ :=
  (row.constructor, row.inputs)

/-- Exact ordered role tuples for this nullary/unary profile. -/
def finiteInputTuples (arity cardinality : ℕ) : List (List ℕ) :=
  if arity = 0 then [[]]
  else if arity = 1 then (List.range cardinality).map fun role => [role]
  else []

/-- All supported constructor/input keys in canonical constructor and finite-role order. -/
def tableKeyUniverse (snapshot : Snapshot) (cardinality : ℕ) :
    List (ConstructorId × List ℕ) :=
  snapshot.constructors.flatMap fun constructor =>
    (finiteInputTuples constructor.inputSorts.length cardinality).map fun inputs =>
      (constructor.id, inputs)

/-- The finite tuple enumeration has no duplicate tuples, including the empty tuple. -/
theorem finiteInputTuples_nodup (arity cardinality : ℕ) :
    (finiteInputTuples arity cardinality).Nodup := by
  by_cases zero : arity = 0
  · simp [finiteInputTuples, zero]
  by_cases one : arity = 1
  · simp only [finiteInputTuples, one, if_true]
    exact List.Nodup.map (fun _ _ equality => by simpa using equality) List.nodup_range
  · simp [finiteInputTuples, zero, one]

/-- Distinct checked constructor identities make the whole enumerated key space unique. -/
theorem tableKeyUniverse_nodup (snapshot : Snapshot) (cardinality : ℕ)
    (distinct : (snapshot.constructors.map Constructor.id).Nodup) :
    (tableKeyUniverse snapshot cardinality).Nodup := by
  apply List.nodup_flatMap.mpr
  constructor
  · intro constructor _
    exact List.Nodup.map (fun _ _ equality => congrArg Prod.snd equality)
      (finiteInputTuples_nodup constructor.inputSorts.length cardinality)
  · apply (List.pairwise_map.mp distinct).imp
    intro left right different key leftMember rightMember
    obtain ⟨leftInputs, _, leftEq⟩ := List.mem_map.mp leftMember
    obtain ⟨rightInputs, _, rightEq⟩ := List.mem_map.mp rightMember
    exact different (congrArg Prod.fst (leftEq.trans rightEq.symm))

/-- Every supported nullary key is enumerated once, even with an empty role input. -/
theorem tableKeyUniverse_nullary (snapshot : Snapshot) (cardinality : ℕ)
    (constructor : Constructor) (member : constructor ∈ snapshot.constructors)
    (arity : constructor.inputSorts.length = 0) :
    (constructor.id, []) ∈ tableKeyUniverse snapshot cardinality := by
  apply List.mem_flatMap.mpr
  refine ⟨constructor, member, ?_⟩
  simp [finiteInputTuples, arity]

/-- Every role gives one enumerated unary key; total mode cannot omit an unused one. -/
theorem tableKeyUniverse_unary (snapshot : Snapshot) (cardinality : ℕ)
    (constructor : Constructor) (member : constructor ∈ snapshot.constructors)
    (arity : constructor.inputSorts.length = 1) (role : ℕ) (bound : role < cardinality) :
    (constructor.id, [role]) ∈ tableKeyUniverse snapshot cardinality := by
  apply List.mem_flatMap.mpr
  refine ⟨constructor, member, ?_⟩
  simp [finiteInputTuples, arity, bound]

/-- A row uses an existing constructor, its exact arity and in-range input/output roles. -/
def FiniteRowValid (snapshot : Snapshot) (cardinality : ℕ) (row : TableRow) : Prop :=
  row.constructor.value < snapshot.constructors.length ∧
  row.inputs.length = (constructorAt snapshot row.constructor).inputSorts.length ∧
  (∀ role ∈ row.inputs, role < cardinality) ∧
  row.output < cardinality

instance (snapshot : Snapshot) (cardinality : ℕ) (row : TableRow) :
    Decidable (FiniteRowValid snapshot cardinality row) := by
  unfold FiniteRowValid
  infer_instance

/-- Includes the complete potential input domain even for a sparse partial table. -/
def finiteTableWork (snapshot : Snapshot) (table : FiniteTable) : ℕ :=
  (snapshot.constructors.length + 1) * (table.cardinality + 1) *
    (table.rows.length + 1) + (table.rows.map fun row => row.inputs.length).sum

/-- Canonical deterministic finite rows, with full key coverage required only in total mode. -/
def TableValid (snapshot : Snapshot) (table : FiniteTable) (coverage : CoverageMode) : Prop :=
  snapshot.sorts = [⟨0⟩] ∧
  (∀ constructor ∈ snapshot.constructors, constructor.inputSorts.length ≤ 1) ∧
  0 < table.cardinality ∧ table.cardinality ≤ snapshot.limits.maxRecords ∧
  table.rows.length ≤ snapshot.limits.maxRecords ∧
  (table.rows.map tableRowKey).Nodup ∧
  (table.rows.map tableRowKey).Sublist (tableKeyUniverse snapshot table.cardinality) ∧
  (∀ row ∈ table.rows, FiniteRowValid snapshot table.cardinality row) ∧
  (match coverage with
    | .partial => True
    | .total => table.rows.map tableRowKey = tableKeyUniverse snapshot table.cardinality) ∧
  finiteTableWork snapshot table ≤ snapshot.limits.maxWork

instance (snapshot : Snapshot) (table : FiniteTable) (coverage : CoverageMode) :
    Decidable (TableValid snapshot table coverage) := by
  unfold TableValid
  cases coverage <;> infer_instance

/-- Decide the exact finite table predicate under the declared partial or total coverage mode. -/
def checkFiniteTable (snapshot : Snapshot) (table : FiniteTable)
    (coverage : CoverageMode) : Bool :=
  decide (TableValid snapshot table coverage)

theorem checkFiniteTable_sound (snapshot : Snapshot) (table : FiniteTable)
    (coverage : CoverageMode) (accepted : checkFiniteTable snapshot table coverage = true) :
    TableValid snapshot table coverage := by
  simpa [checkFiniteTable] using accepted

/-- A checked table has one exact row, hence one output, for every stored key. -/
theorem finiteTable_deterministic (snapshot : Snapshot) (table : FiniteTable)
    (coverage : CoverageMode) (valid : TableValid snapshot table coverage)
    (left right : TableRow) (leftMember : left ∈ table.rows) (rightMember : right ∈ table.rows)
    (sameKey : tableRowKey left = tableRowKey right) : left = right := by
  obtain ⟨_, _, _, _, _, unique, _, _, _, _⟩ := valid
  exact List.inj_on_of_nodup_map unique leftMember rightMember sameKey

/-- Total means complete coverage of the declared exact finite universe. -/
theorem finiteTable_total_coverage (snapshot : Snapshot) (table : FiniteTable)
    (valid : TableValid snapshot table .total) (key : ConstructorId × List ℕ)
    (member : key ∈ tableKeyUniverse snapshot table.cardinality) :
    ∃ row ∈ table.rows, tableRowKey row = key := by
  obtain ⟨_, _, _, _, _, _, _, _, complete, _⟩ := valid
  rw [← complete] at member
  exact List.mem_map.mp member

/-- Algebra admission precedes, and does not imply, a tree-specific role run. -/
def RoleAlgebraValid (full : CheckedFullDeclaration) : Prop :=
  full.value.roles.version = 1 ∧
  TableValid full.snapshot.value full.value.roles.table full.value.roles.coverage ∧
  full.value.roles.accepting.Sublist (List.range full.value.roles.table.cardinality)

instance (full : CheckedFullDeclaration) : Decidable (RoleAlgebraValid full) := by
  unfold RoleAlgebraValid
  infer_instance

/-- Check role-table structure and accepting-role identities before any tree-specific run. -/
def checkRoleAlgebra (full : CheckedFullDeclaration) : Bool := decide (RoleAlgebraValid full)

theorem checkRoleAlgebra_sound (full : CheckedFullDeclaration)
    (accepted : checkRoleAlgebra full = true) : RoleAlgebraValid full := by
  simpa [checkRoleAlgebra] using accepted

/-- A checked finite algebra with its exact critical and involution predecessors.
It intentionally lives in `Type` for the executable `Option`-returning admission API. -/
@[nolint structureInType]
structure CheckedRoleAlgebra (full : CheckedFullDeclaration) : Type where
  /-- The exact singleton critical predecessor for this declaration. -/
  critical : CheckedCritical full
  /-- The exact signed involution checked after that critical predecessor. -/
  involution : CheckedInvolution full critical
  /-- Finite deterministic role-table and accepting-set validity. -/
  valid : RoleAlgebraValid full

/-- Admit the finite role declaration while retaining both exact predecessor operands. -/
def admitRoleAlgebra (full : CheckedFullDeclaration) (critical : CheckedCritical full)
    (involution : CheckedInvolution full critical) : Option (CheckedRoleAlgebra full) :=
  if valid : RoleAlgebraValid full then some ⟨critical, involution, valid⟩ else none

/-- Out-of-range defaults are not authority: run length and every node/child
index are checked against the predecessor's exact K2 certificate. -/
def roleAt (roles : List ℕ) (node : NodeId) : ℕ := (roles[node.value]?).getD 0

/-- The actual constructor, ordered child roles and output role at one syntax node. -/
def nodeTransition (roles : List ℕ) (node : SyntaxNode) : TableRow :=
  ⟨node.constructor, node.children.map (roleAt roles), roleAt roles node.id⟩

/-- Declared finite reference work for checking every node against the complete stored table. -/
def roleRunWork (full : CheckedFullDeclaration) : ℕ :=
  (full.tree.certificate.nodes.length + 1) * (full.value.roles.table.rows.length + 1) *
    (full.value.runRoles.length + 1)

/-- One in-range role per checked syntax node, with every actual node transition licensed. -/
def RoleRunValid (full : CheckedFullDeclaration) : Prop :=
  full.value.runRoles.length = full.tree.certificate.nodes.length ∧
  (∀ role ∈ full.value.runRoles, role < full.value.roles.table.cardinality) ∧
  (∀ node ∈ full.tree.certificate.nodes,
    nodeTransition full.value.runRoles node ∈ full.value.roles.table.rows) ∧
  roleRunWork full ≤ full.snapshot.value.limits.maxWork

instance (full : CheckedFullDeclaration) : Decidable (RoleRunValid full) := by
  unfold RoleRunValid
  infer_instance

/-- Decide tree-specific role evidence; table validity and acceptance remain separate claims. -/
def checkRoleRun (full : CheckedFullDeclaration) : Bool := decide (RoleRunValid full)

theorem checkRoleRun_sound (full : CheckedFullDeclaration)
    (accepted : checkRoleRun full = true) : RoleRunValid full := by
  simpa [checkRoleRun] using accepted

/-- A run keeps the exact declaration, checked syntax and checked role algebra
in its type. A role list alone is never a checked run. -/
-- `Type` is intentional: the executable verifier returns this proof token in `Option`.
@[nolint structureInType]
structure CheckedRoleRun (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) : Type where
  /-- Every actual node has the declared in-range role and a licensed local transition. -/
  valid : RoleRunValid full

/-- Issue a run token only for the supplied exact full declaration and checked algebra. -/
def admitRoleRun (full : CheckedFullDeclaration) (algebra : CheckedRoleAlgebra full) :
    Option (CheckedRoleRun full algebra) :=
  if valid : RoleRunValid full then some ⟨valid⟩ else none

/-- The role at the checked syntax root belongs to the declared accepting-role set. -/
def RoleAccepted (full : CheckedFullDeclaration) : Prop :=
  roleAt full.value.runRoles full.tree.certificate.root ∈ full.value.roles.accepting

instance (full : CheckedFullDeclaration) : Decidable (RoleAccepted full) := by
  unfold RoleAccepted
  infer_instance

/-- Check root acceptance independently of whether the tree has a valid algebra run. -/
def checkRoleAccepted (full : CheckedFullDeclaration) : Bool := decide (RoleAccepted full)

theorem checkRoleAccepted_sound (full : CheckedFullDeclaration)
    (accepted : checkRoleAccepted full = true) : RoleAccepted full := by
  simpa [checkRoleAccepted] using accepted

/-- Accepting-root evidence indexed by its exact previously checked role run.
It intentionally lives in `Type` so the executable admission API can return `Option`. -/
@[nolint structureInType]
structure CheckedAcceptedRoleRun (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) (run : CheckedRoleRun full algebra) : Type where
  /-- The checked run root is in the exact declared accepting set. -/
  accepted : RoleAccepted full

/-- Issue an accepting-run token only after checking the root against the declared set. -/
def admitAcceptedRoleRun (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) (run : CheckedRoleRun full algebra) :
    Option (CheckedAcceptedRoleRun full algebra run) :=
  if accepted : RoleAccepted full then some ⟨accepted⟩ else none

theorem checkedRoleRun_node_transition (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) (run : CheckedRoleRun full algebra)
    (node : SyntaxNode) (member : node ∈ full.tree.certificate.nodes) :
    nodeTransition full.value.runRoles node ∈ full.value.roles.table.rows :=
  run.valid.2.2.1 node member

/-- This source theorem preserves whole-record scope, not only table or digest identity. -/
theorem checkedRoleRun_exact_tree_scope (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) (_run : CheckedRoleRun full algebra) :
    full.value.coreTree = full.tree.certificate := full.treeMatches

/-- Production construction preserves the source constructor's ordered surface. -/
def productionOfRow (snapshot : Snapshot) (row : TableRow) : GrammarProduction :=
  let constructor := constructorAt snapshot row.constructor
  ⟨row.constructor, row.inputs, row.output, constructor.terminalSymbols, constructor.surface⟩

/-- No tree, sample run or accepting-root filter occurs in this transformation. -/
def extractGrammarRows (snapshot : Snapshot) (table : FiniteTable) : List GrammarProduction :=
  table.rows.map (productionOfRow snapshot)

/-- Finite storage work for production inputs, terminal declarations and surface templates. -/
def grammarRecordWork (productions : List GrammarProduction) : ℕ :=
  productions.length + (productions.map fun production =>
    production.inputs.length + production.terminalSymbols.length + production.surface.length).sum

/-- Declared extraction and comparison work, counting both output and supplied grammar. -/
def grammarExtractionWork (full : CheckedFullDeclaration) : ℕ :=
  (full.value.roles.table.rows.length + 1) * (full.snapshot.value.constructors.length + 1) +
    grammarRecordWork (extractGrammarRows full.snapshot.value full.value.roles.table) +
    grammarRecordWork (full.value.candidateGrammar.getD [])

/-- An optional supplied grammar is a checked commitment, never extraction authority. -/
def GrammarValid (full : CheckedFullDeclaration) : Prop :=
  (match full.value.candidateGrammar with
    | none => True
    | some candidate => candidate = extractGrammarRows full.snapshot.value full.value.roles.table) ∧
  grammarExtractionWork full ≤ full.snapshot.value.limits.maxWork

instance (full : CheckedFullDeclaration) : Decidable (GrammarValid full) := by
  unfold GrammarValid
  split <;> infer_instance

/-- Check the supplied grammar against complete row extraction and the declared work bound. -/
def checkGrammar (full : CheckedFullDeclaration) : Bool := decide (GrammarValid full)

theorem checkGrammar_sound (full : CheckedFullDeclaration)
    (accepted : checkGrammar full = true) : GrammarValid full := by
  simpa [checkGrammar] using accepted

/-- K7 depends on the checked complete algebra, not on one successful role run. -/
-- `Type` is intentional: the executable verifier returns this proof token in `Option`.
@[nolint structureInType]
structure CheckedGrammar (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) : Type where
  /-- The optional supplied grammar matches complete extraction within the work quota. -/
  valid : GrammarValid full

/-- Return grammar evidence for the exact checked algebra when the extraction check passes. -/
def admitGrammar (full : CheckedFullDeclaration) (algebra : CheckedRoleAlgebra full) :
    Option (CheckedGrammar full algebra) :=
  if valid : GrammarValid full then some ⟨valid⟩ else none

/-- Reconstruct every production from the checked algebra; no candidate list is trusted. -/
def CheckedGrammar.productions {full : CheckedFullDeclaration}
    {algebra : CheckedRoleAlgebra full} (_grammar : CheckedGrammar full algebra) :
    List GrammarProduction := extractGrammarRows full.snapshot.value full.value.roles.table

/-- The exact accepting-role set retained from the checked declaration. -/
def CheckedGrammar.accepting {full : CheckedFullDeclaration}
    {algebra : CheckedRoleAlgebra full} (_grammar : CheckedGrammar full algebra) : List ℕ :=
  full.value.roles.accepting

/-- Exact row/production correspondence includes rows unreachable from any one run. -/
theorem grammar_production_iff (snapshot : Snapshot) (table : FiniteTable)
    (production : GrammarProduction) :
    production ∈ extractGrammarRows snapshot table ↔
      ∃ row ∈ table.rows, productionOfRow snapshot row = production := by
  simp [extractGrammarRows]

/-- No new transition can be introduced by extraction, even via surface metadata. -/
theorem productionOfRow_injective (snapshot : Snapshot) :
    Function.Injective (productionOfRow snapshot) := by
  intro left right equality
  have constructorEq := congrArg GrammarProduction.constructor equality
  have inputsEq := congrArg GrammarProduction.inputs equality
  have outputEq := congrArg GrammarProduction.output equality
  cases left
  cases right
  simp_all [productionOfRow]

/-- Extraction preserves the canonical no-duplicate row policy. -/
theorem checkedGrammar_productions_nodup (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) (grammar : CheckedGrammar full algebra) :
    grammar.productions.Nodup := by
  obtain ⟨_, _, _, _, _, unique, _, _, _, _⟩ := algebra.valid.2.1
  exact List.Nodup.map (productionOfRow_injective full.snapshot.value) unique.of_map

/-- Exact local equivalence, with no reachability or one-run pruning assumption. -/
theorem grammar_transition_iff (snapshot : Snapshot) (table : FiniteTable) (row : TableRow) :
    productionOfRow snapshot row ∈ extractGrammarRows snapshot table ↔ row ∈ table.rows := by
  constructor
  · intro member
    obtain ⟨source, sourceMember, equality⟩ := (grammar_production_iff snapshot table _).mp member
    exact (productionOfRow_injective snapshot equality) ▸ sourceMember
  · intro member
    exact (grammar_production_iff snapshot table _).mpr ⟨row, member, rfl⟩

/-- Every checked run node is licensed by the extracted grammar and retains its
actual constructor, actual ordered child roles and actual terminal template. -/
theorem checkedRoleRun_grammar_local_soundness (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) (run : CheckedRoleRun full algebra)
    (grammar : CheckedGrammar full algebra) (node : SyntaxNode)
    (member : node ∈ full.tree.certificate.nodes) :
    productionOfRow full.snapshot.value (nodeTransition full.value.runRoles node) ∈
      grammar.productions := by
  exact (grammar_transition_iff full.snapshot.value full.value.roles.table _).mpr
    (checkedRoleRun_node_transition full algebra run node member)

/-- The converse is local to the same checked syntax and supplied role assignment;
it does not infer correctness from an unrelated grammar derivation. -/
theorem grammar_local_iff_run_local (full : CheckedFullDeclaration) :
    (∀ node ∈ full.tree.certificate.nodes,
      productionOfRow full.snapshot.value (nodeTransition full.value.runRoles node) ∈
        extractGrammarRows full.snapshot.value full.value.roles.table) ↔
    (∀ node ∈ full.tree.certificate.nodes,
      nodeTransition full.value.runRoles node ∈ full.value.roles.table.rows) := by
  simp only [grammar_transition_iff]

namespace FiniteTableFixtures

/-- A table-only signature fixture. Full snapshot/K1 admission is established
separately by the end-to-end fixtures, never inferred from these table tests. -/
def signature : Snapshot :=
  { (default : Snapshot) with
    sorts := [⟨0⟩]
    limits := ⟨64, 256, 1, 16, 8, 100, 1000000⟩
    constructors :=
      [⟨⟨0⟩, [], ⟨0⟩, [⟨0⟩], [.terminal 0], []⟩,
       ⟨⟨1⟩, [⟨0⟩], ⟨0⟩, [], [.child 0], []⟩] }

/-- Synthetic nullary transition returning role zero in the table-only fixture. -/
def nullaryRow : TableRow := ⟨⟨0⟩, [], 0⟩
/-- Synthetic unary transition sending role zero to role one. -/
def unaryZeroRow : TableRow := ⟨⟨1⟩, [0], 1⟩
/-- Synthetic unary transition sending role one to role zero. -/
def unaryOneRow : TableRow := ⟨⟨1⟩, [1], 0⟩
/-- The complete canonical two-role fixture table, including both unary input keys. -/
def totalTable : FiniteTable := ⟨2, [nullaryRow, unaryZeroRow, unaryOneRow]⟩
/-- The deliberately sparse fixture table omitting the unary role-one input key. -/
def partialTable : FiniteTable := ⟨2, [nullaryRow, unaryZeroRow]⟩

theorem total_table_accepted : checkFiniteTable signature totalTable .total = true := by decide

theorem partial_table_accepted :
    checkFiniteTable signature partialTable .partial = true := by decide

theorem unused_key_omission_rejected_for_total :
    checkFiniteTable signature partialTable .total = false := by decide

theorem missing_partial_key_has_no_transition : unaryOneRow ∉ partialTable.rows := by decide

theorem duplicate_identical_key_rejected :
    checkFiniteTable signature
      { totalTable with rows := [nullaryRow, unaryZeroRow, unaryZeroRow, unaryOneRow] }
      .partial = false := by decide

theorem duplicate_conflicting_key_rejected :
    checkFiniteTable signature
      { totalTable with rows := [nullaryRow, unaryZeroRow, { unaryZeroRow with output := 0 }] }
      .partial = false := by decide

theorem reordered_table_rejected :
    checkFiniteTable signature
      { totalTable with rows := [unaryOneRow, unaryZeroRow, nullaryRow] }
      .partial = false := by decide

theorem unknown_constructor_rejected :
    checkFiniteTable signature
      { totalTable with rows := [nullaryRow, { unaryZeroRow with constructor := ⟨9⟩ }] }
      .partial = false := by decide

theorem unknown_input_role_rejected :
    checkFiniteTable signature
      { totalTable with rows := [nullaryRow, { unaryZeroRow with inputs := [2] }] }
      .partial = false := by decide

theorem unknown_output_role_rejected :
    checkFiniteTable signature
      { totalTable with rows := [nullaryRow, { unaryZeroRow with output := 2 }] }
      .partial = false := by decide

theorem nullary_with_child_rejected :
    checkFiniteTable signature
      { totalTable with rows := [{ nullaryRow with inputs := [0] }] }
      .partial = false := by decide

theorem unary_without_child_rejected :
    checkFiniteTable signature
      { totalTable with rows := [nullaryRow, { unaryZeroRow with inputs := [] }] }
      .partial = false := by decide

theorem empty_role_domain_rejected :
    checkFiniteTable signature { totalTable with cardinality := 0, rows := [] }
      .partial = false := by decide

theorem work_exhaustion_rejected :
    checkFiniteTable { signature with limits := { signature.limits with maxWork := 0 } }
      totalTable .total = false := by decide

/-- Both unary transitions survive extraction; no observed run was supplied. -/
theorem extraction_includes_every_unary_row :
    productionOfRow signature unaryZeroRow ∈ extractGrammarRows signature totalTable ∧
      productionOfRow signature unaryOneRow ∈ extractGrammarRows signature totalTable := by decide

theorem omitted_production_is_not_complete_grammar :
    extractGrammarRows signature totalTable ≠
      [productionOfRow signature nullaryRow, productionOfRow signature unaryZeroRow] := by decide

theorem changed_surface_is_not_extracted :
    { productionOfRow signature unaryZeroRow with surface := [] } ∉
      extractGrammarRows signature totalTable := by decide

end FiniteTableFixtures

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
