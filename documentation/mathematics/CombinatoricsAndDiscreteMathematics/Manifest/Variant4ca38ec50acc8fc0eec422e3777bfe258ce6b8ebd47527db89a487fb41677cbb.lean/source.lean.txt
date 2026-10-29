import DAF.Rhetorical.Kernel.Feature
import DAF.Rhetorical.Kernel.Regularization
import DAF.Rhetorical.Role
import DAF.Runtime.Manifest
import Mathlib.Tactic.DeriveFintype
import Mathlib.Tactic.Linarith

/-!
# Lean-owned production rhetorical-kernel manifest

`ProductionKernelManifest` is the semantic source for the finite production
profile consumed by the Rust Gram runtime.  The committed `RKM1` artifact is
encoded directly from `productionManifest`; Rust is only a closed transport
adapter for these bytes.

The manifest binds the complete seven-role vocabulary, exact regularization
policy, semantic Gram identity, stable concept-role addresses, declared
relation references, and the exact kernel-identity preimage. It does not claim
that the finite profile is the completed rhetorical Hilbert space.
-/

namespace DAF.Rhetorical.KernelManifest

open DAF.Runtime.DHF1
open DAF.Universe
open scoped ComplexOrder

abbrev WireDigest := DAF.Runtime.DHF1.Digest

/-- Stable binding of one finite runtime column to its formal rhetorical
index.  `activeIndex` is transport identity; list position is matrix position.
-/
structure ActiveIndexBinding where
  activeIndex : Nat
  concept : ConceptId
  role : RhetoricalRole
  deriving DecidableEq, Repr

/-- ID-only relation metadata retained by the finite profile.  This record is
not a `CertifiedImplication`: its theorem identifier is an unresolved
reference and it carries no proposition or proof term. Numerical affinity
never promotes this declaration to theorem authority. -/
structure DeclaredRelationBinding where
  relationId : StableId
  premise : ConceptId
  conclusion : ConceptId
  theoremId : TerrainNodeId
  deriving DecidableEq, Repr

/-- Closed production feature-channel names.  Each constructor has one
explicit authority label and a nonnegative exact rational weight. -/
inductive ProductionFeatureChannel
  | baseSimilarity
  | directedImplication
  | explicitOpposition
  | translationalAnalogy
  deriving DecidableEq, Repr, Fintype

/-- Closed algorithm vocabulary for the total stable-index feature.  The
parameters below are serialized as data; changing the behavior away from the
finite active table therefore changes the semantic-definition digest. -/
inductive StableIndexFeatureAlgorithm
  | utf8ByteSumPlusRoleTagModOffset
  deriving DecidableEq, Repr

/-- Closed kernel constructor used by each sparse semantic channel. -/
inductive SemanticChannelKernelKind
  | indicatorRankOne
  deriving DecidableEq, Repr

/-- Serializable specification of the total stable-ID/role feature. -/
structure StableIndexFeatureSpecification where
  algorithm : StableIndexFeatureAlgorithm
  byteIncrement : Nat
  roleTagMultiplier : Nat
  modulus : Nat
  outputOffset : Nat
  id : StableId
  authority : FeatureChannelAuthority
  weightNumerator : Nat
  weightDenominator : Nat
  deriving DecidableEq, Repr

/-- Serializable specification of one sparse rank-one relation channel.  Its
support is a list of full rhetorical indices, not positions in a finite Gram
table. -/
structure SemanticChannelSpecification where
  channel : ProductionFeatureChannel
  kernelKind : SemanticChannelKernelKind
  id : StableId
  authority : FeatureChannelAuthority
  weightNumerator : Nat
  weightDenominator : Nat
  support : List RhetoricalIndex
  deriving DecidableEq, Repr

/-- Closed, executable description of the total production semantic kernel.
The finite active table is deliberately absent: independent tables over this
same total definition must receive the same kernel identity. -/
structure ProductionSemanticDefinition where
  version : String
  stableIndexFeature : StableIndexFeatureSpecification
  relationChannels : List SemanticChannelSpecification
  deriving DecidableEq, Repr

structure FeatureChannelBinding where
  id : StableId
  authority : FeatureChannelAuthority
  weightNumerator : Nat
  weightDenominator : Nat
  deriving DecidableEq, Repr

/-- Closed Lean source for one executable finite kernel profile.  All digests
in the wire artifact are derived by the encoder below rather than maintained
as duplicate fields. -/
structure ProductionKernelManifest where
  schemaVersion : Nat
  policyVersion : String
  semanticDefinition : ProductionSemanticDefinition
  epsilonNumerator : Nat
  epsilonDenominator : Nat
  roleVocabulary : List RhetoricalRole
  featureChannels : List FeatureChannelBinding
  semanticDimension : Nat
  semanticGramWire : List UInt8
  activeBindings : List ActiveIndexBinding
  declaredRelations : List DeclaredRelationBinding
  deriving DecidableEq, Repr

def canonicalRoleVocabulary : List RhetoricalRole :=
  [.base, .premise, .conclusion, .positive, .negative, .source, .target]

/-- Human-readable descriptor whose SHA-256 occupies the legacy RHT1
`schemaDigest` field.  It names the exact binary format; it is not a second
schema authority. -/
def formatDescriptor : String :=
  "daf-rhetorical-kernel-manifest:RKM1:v2\n"

def formatDescriptorWire : List UInt8 := formatDescriptor.toUTF8.toList

private def encodeString (value : String) : List UInt8 :=
  natBytesBE 4 value.toUTF8.size ++ value.toUTF8.toList

private def encodeRole (role : RhetoricalRole) : List UInt8 :=
  [UInt8.ofNat role.tag] ++ encodeString role.name

private def encodeActiveBinding (binding : ActiveIndexBinding) : List UInt8 :=
  natBytesBE 4 binding.activeIndex ++
    encodeString binding.concept.value ++ [UInt8.ofNat binding.role.tag]

private def encodeDeclaredRelationBinding
    (binding : DeclaredRelationBinding) : List UInt8 :=
  encodeString binding.relationId.value ++
    encodeString binding.premise.value ++
    encodeString binding.conclusion.value ++
    encodeString binding.theoremId.value

private def featureAuthorityTag : FeatureChannelAuthority → UInt8
  | .formalDependency => 0
  | .glossaryDefinition => 1
  | .theoremHypothesis => 2
  | .executableRepresentation => 3
  | .runtimeConformance => 4
  | .externalSemanticEmbedding => 5
  | .roleSpecificRhetorical => 6

private def encodeFeatureChannel (binding : FeatureChannelBinding) : List UInt8 :=
  encodeString binding.id.value ++ [featureAuthorityTag binding.authority] ++
    natBytesBE 8 binding.weightNumerator ++
    natBytesBE 8 binding.weightDenominator

private def stableIndexFeatureAlgorithmTag : StableIndexFeatureAlgorithm → UInt8
  | .utf8ByteSumPlusRoleTagModOffset => 0

private def semanticChannelKernelKindTag : SemanticChannelKernelKind → UInt8
  | .indicatorRankOne => 0

private def productionFeatureChannelTag : ProductionFeatureChannel → UInt8
  | .baseSimilarity => 0
  | .directedImplication => 1
  | .explicitOpposition => 2
  | .translationalAnalogy => 3

private def encodeRhetoricalIndex (index : RhetoricalIndex) : List UInt8 :=
  encodeString index.1.value ++ [UInt8.ofNat index.2.tag]

private def encodeStableIndexFeatureSpecification
    (specification : StableIndexFeatureSpecification) : List UInt8 :=
  [stableIndexFeatureAlgorithmTag specification.algorithm] ++
    natBytesBE 8 specification.byteIncrement ++
    natBytesBE 8 specification.roleTagMultiplier ++
    natBytesBE 8 specification.modulus ++
    natBytesBE 8 specification.outputOffset ++
    encodeString specification.id.value ++
    [featureAuthorityTag specification.authority] ++
    natBytesBE 8 specification.weightNumerator ++
    natBytesBE 8 specification.weightDenominator

private def encodeSemanticChannelSpecification
    (specification : SemanticChannelSpecification) : List UInt8 :=
  [productionFeatureChannelTag specification.channel,
      semanticChannelKernelKindTag specification.kernelKind] ++
    encodeString specification.id.value ++
    [featureAuthorityTag specification.authority] ++
    natBytesBE 8 specification.weightNumerator ++
    natBytesBE 8 specification.weightDenominator ++
    natBytesBE 4 specification.support.length ++
    specification.support.flatMap encodeRhetoricalIndex

/-- Canonical closed serialization of the total semantic definition. -/
def semanticDefinitionWire
    (definition : ProductionSemanticDefinition) : List UInt8 :=
  encodeString definition.version ++
    encodeStableIndexFeatureSpecification definition.stableIndexFeature ++
    natBytesBE 4 definition.relationChannels.length ++
    definition.relationChannels.flatMap encodeSemanticChannelSpecification

/-- Digest which identifies total semantic behavior, including indices absent
from every finite active Gram table. -/
def totalSemanticDefinitionDigest
    (definition : ProductionSemanticDefinition) : WireDigest :=
  sha256 (semanticDefinitionWire definition)

/-- Exact scalar wire encoding used by the production feature Gram. -/
private def rationalWire (numerator denominator : Nat) : List UInt8 :=
  natBytesBE 8 numerator ++ natBytesBE 8 denominator

private def realComplexWire (numerator denominator : Nat) : List UInt8 :=
  rationalWire numerator denominator ++ rationalWire 0 1

/-- Stable project concepts are named by their authoritative glossary anchors,
not by synthetic runtime fixture letters. -/
def positiveRhetoricalKernelConcept : ConceptId :=
  ⟨"bit:glossary:positive-rhetorical-kernel"⟩

def rhetoricalHilbertCompletionConcept : ConceptId :=
  ⟨"bit:glossary:rhetorical-hilbert-completion"⟩

def certifiedRhetoricalImplicationConcept : ConceptId :=
  ⟨"bit:glossary:certified-rhetorical-implication"⟩

def exactRhetoricalOppositionConcept : ConceptId :=
  ⟨"bit:glossary:exact-rhetorical-opposition"⟩

@[simp] theorem positiveKernelConcept_ne_hilbertCompletionConcept :
    positiveRhetoricalKernelConcept ≠ rhetoricalHilbertCompletionConcept := by
  decide

@[simp] theorem positiveKernelConcept_ne_certifiedImplicationConcept :
    positiveRhetoricalKernelConcept ≠ certifiedRhetoricalImplicationConcept := by
  decide

@[simp] theorem positiveKernelConcept_ne_exactOppositionConcept :
    positiveRhetoricalKernelConcept ≠ exactRhetoricalOppositionConcept := by
  decide

@[simp] theorem hilbertCompletionConcept_ne_positiveKernelConcept :
    rhetoricalHilbertCompletionConcept ≠ positiveRhetoricalKernelConcept := by
  exact Ne.symm positiveKernelConcept_ne_hilbertCompletionConcept

@[simp] theorem hilbertCompletionConcept_ne_certifiedImplicationConcept :
    rhetoricalHilbertCompletionConcept ≠ certifiedRhetoricalImplicationConcept := by
  decide

@[simp] theorem hilbertCompletionConcept_ne_exactOppositionConcept :
    rhetoricalHilbertCompletionConcept ≠ exactRhetoricalOppositionConcept := by
  decide

def positiveKernelSupportsHilbertCompletion : StableId :=
  ⟨"bit:relation:positive-kernel-supports-hilbert-completion"⟩

def rhetoricalSpaceIsHilbertTheorem : TerrainNodeId :=
  ⟨"formal:DAF.Rhetorical.rhetoricalSpace_isHilbert"⟩

/-- Version of the first closed, full-domain semantic-kernel specification. -/
def productionSemanticDefinitionVersion : String :=
  "daf-rhetorical-semantic-kernel-v1"

/-- Data which drives the total stable-index feature. -/
@[simp] def productionStableIndexFeatureSpecification :
    StableIndexFeatureSpecification where
  algorithm := .utf8ByteSumPlusRoleTagModOffset
  byteIncrement := 1
  roleTagMultiplier := 1
  modulus := 2
  outputOffset := 1
  id := ⟨"daf:rhetorical-feature:stable-id-bytes-and-role"⟩
  authority := .executableRepresentation
  weightNumerator := 1
  weightDenominator := 1

/-- Data which drives one sparse relation feature on the full rhetorical
index domain. -/
@[simp] def productionSemanticChannelSpecification :
    ProductionFeatureChannel → SemanticChannelSpecification
  | .baseSimilarity =>
      { channel := .baseSimilarity
        kernelKind := .indicatorRankOne
        id := ⟨"daf:rhetorical-feature:base-similarity"⟩
        authority := .glossaryDefinition
        weightNumerator := 1
        weightDenominator := 1
        support := [
          (positiveRhetoricalKernelConcept, .base),
          (rhetoricalHilbertCompletionConcept, .base)] }
  | .directedImplication =>
      { channel := .directedImplication
        kernelKind := .indicatorRankOne
        id := ⟨"daf:rhetorical-feature:directed-implication"⟩
        authority := .roleSpecificRhetorical
        weightNumerator := 1
        weightDenominator := 1
        support := [
          (positiveRhetoricalKernelConcept, .premise),
          (rhetoricalHilbertCompletionConcept, .conclusion)] }
  | .explicitOpposition =>
      { channel := .explicitOpposition
        kernelKind := .indicatorRankOne
        id := ⟨"daf:rhetorical-feature:explicit-opposition"⟩
        authority := .roleSpecificRhetorical
        weightNumerator := 1
        weightDenominator := 1
        support := [
          (positiveRhetoricalKernelConcept, .positive),
          (rhetoricalHilbertCompletionConcept, .negative)] }
  | .translationalAnalogy =>
      { channel := .translationalAnalogy
        kernelKind := .indicatorRankOne
        id := ⟨"daf:rhetorical-feature:translational-analogy"⟩
        authority := .roleSpecificRhetorical
        weightNumerator := 1
        weightDenominator := 1
        support := [
          (positiveRhetoricalKernelConcept, .source),
          (rhetoricalHilbertCompletionConcept, .target),
          (certifiedRhetoricalImplicationConcept, .source),
          (exactRhetoricalOppositionConcept, .target)] }

def canonicalProductionFeatureChannels : List ProductionFeatureChannel :=
  [.baseSimilarity, .directedImplication, .explicitOpposition,
    .translationalAnalogy]

/-- The serialized definition is also the executable source for every
full-domain feature used by `productionSemanticKernel`. -/
@[simp] def productionSemanticDefinition : ProductionSemanticDefinition where
  version := productionSemanticDefinitionVersion
  stableIndexFeature := productionStableIndexFeatureSpecification
  relationChannels := canonicalProductionFeatureChannels.map
    productionSemanticChannelSpecification

/-- Canonical finite active profile.  Concept-role pairs and transport indices
are both duplicate-free. -/
def productionActiveBindings : List ActiveIndexBinding := [
  ⟨11, positiveRhetoricalKernelConcept, .base⟩,
  ⟨17, rhetoricalHilbertCompletionConcept, .base⟩,
  ⟨23, positiveRhetoricalKernelConcept, .premise⟩,
  ⟨29, rhetoricalHilbertCompletionConcept, .conclusion⟩,
  ⟨35, positiveRhetoricalKernelConcept, .positive⟩,
  ⟨41, rhetoricalHilbertCompletionConcept, .negative⟩,
  ⟨47, positiveRhetoricalKernelConcept, .source⟩,
  ⟨53, rhetoricalHilbertCompletionConcept, .target⟩,
  ⟨59, certifiedRhetoricalImplicationConcept, .source⟩,
  ⟨65, exactRhetoricalOppositionConcept, .target⟩]

def productionDeclaredRelations : List DeclaredRelationBinding := [
  ⟨positiveKernelSupportsHilbertCompletion,
    positiveRhetoricalKernelConcept, rhetoricalHilbertCompletionConcept,
    rhetoricalSpaceIsHilbertTheorem⟩]

/-- Deterministic finite feature extracted from the complete stable concept-ID
byte sequence and the rhetorical role.  The byte fold is representation
evidence, not theorem or ontology authority; the final successor makes the
feature nonzero at every concept-role index. -/
def stableIndexFeatureNat (index : RhetoricalIndex) : Nat :=
  let specification := productionSemanticDefinition.stableIndexFeature
  let byteWeight := index.1.value.toUTF8.toList.foldl
    (fun total byte => total + byte.toNat + specification.byteIncrement) 0
  (byteWeight + specification.roleTagMultiplier * index.2.tag) %
      specification.modulus + specification.outputOffset

theorem stableIndexFeatureNat_pos (index : RhetoricalIndex) :
    0 < stableIndexFeatureNat index := by
  simp [stableIndexFeatureNat, productionSemanticDefinition,
    productionStableIndexFeatureSpecification]

/-- Complex scalar used by the stable-ID-byte/role feature channel. -/
def productionIndexFeature (index : RhetoricalIndex) : ℂ :=
  stableIndexFeatureNat index

/-- Authority-labelled stable-index channel driven by the closed semantic
definition. -/
noncomputable def productionIndexKernelChannel :
    FeatureKernelChannel RhetoricalIndex where
  id := productionSemanticDefinition.stableIndexFeature.id
  authority := productionSemanticDefinition.stableIndexFeature.authority
  kernel := scalarFeatureKernel productionIndexFeature
  weight := productionSemanticDefinition.stableIndexFeature.weightNumerator /
    productionSemanticDefinition.stableIndexFeature.weightDenominator
  weight_nonnegative := by
    norm_num [productionSemanticDefinition,
      productionStableIndexFeatureSpecification]

/-- PSD semantic channel defined on every stable concept-role index. -/
noncomputable def productionIndexKernel : PositiveKernel RhetoricalIndex :=
  productionIndexKernelChannel.weighted

@[simp] theorem productionIndexKernel_apply
    (left right : RhetoricalIndex) :
    productionIndexKernel left right =
      stableIndexFeatureNat left * stableIndexFeatureNat right := by
  simp [productionIndexKernel, productionIndexFeature,
    productionIndexKernelChannel, productionSemanticDefinition,
    productionStableIndexFeatureSpecification, FeatureKernelChannel.weighted,
    scalarFeatureKernel_apply]

def productionIndexFeatureChannel : FeatureChannelBinding where
  id := productionSemanticDefinition.stableIndexFeature.id
  authority := productionSemanticDefinition.stableIndexFeature.authority
  weightNumerator := productionSemanticDefinition.stableIndexFeature.weightNumerator
  weightDenominator := productionSemanticDefinition.stableIndexFeature.weightDenominator

def productionFeatureChannelId (channel : ProductionFeatureChannel) : StableId :=
  (productionSemanticChannelSpecification channel).id

def productionFeatureAuthority :
    ProductionFeatureChannel → FeatureChannelAuthority :=
  fun channel => (productionSemanticChannelSpecification channel).authority

@[simp] theorem productionFeatureChannel_univ :
    (Finset.univ : Finset ProductionFeatureChannel) =
      {.baseSimilarity, .directedImplication, .explicitOpposition,
        .translationalAnalogy} := by
  decide

def productionFeatureEnabled
    (channel : ProductionFeatureChannel) (index : RhetoricalIndex) : Bool :=
  decide (index ∈ (productionSemanticChannelSpecification channel).support)

def productionFeature
    (index : RhetoricalIndex) (channel : ProductionFeatureChannel) : ℂ :=
  if productionFeatureEnabled channel index then 1 else 0

/-- Formal authority-labelled channel corresponding to one manifest row. -/
noncomputable def productionChannelKernel
    (channel : ProductionFeatureChannel) :
    FeatureKernelChannel RhetoricalIndex where
  id := productionFeatureChannelId channel
  authority := productionFeatureAuthority channel
  kernel := scalarFeatureKernel fun index => productionFeature index channel
  weight := (productionSemanticChannelSpecification channel).weightNumerator /
    (productionSemanticChannelSpecification channel).weightDenominator
  weight_nonnegative := by
    cases channel <;> norm_num [productionSemanticChannelSpecification]

/-- Sparse curated relation channels used by the finite example profile. -/
noncomputable def productionRelationalSemanticKernel :
    PositiveKernel RhetoricalIndex :=
  featureChannelKernel productionChannelKernel

/-- Sum of two positive kernels. -/
private noncomputable def addPositiveKernels
    (left right : PositiveKernel RhetoricalIndex) :
    PositiveKernel RhetoricalIndex where
  matrix := left.matrix + right.matrix
  positiveSemidefinite :=
    left.positiveSemidefinite.add right.positiveSemidefinite

@[simp] private theorem addPositiveKernels_apply
    (left right : PositiveKernel RhetoricalIndex)
    (i j : RhetoricalIndex) :
    addPositiveKernels left right i j = left i j + right i j :=
  rfl

/-- Production semantic kernel on the full concept-role domain.  The stable
ID-byte/role feature is total and nonzero; the curated relation channels add
exact finite semantic structure.  Identity separation still belongs only to
the independent epsilon regularizer. -/
noncomputable def productionSemanticKernel : PositiveKernel RhetoricalIndex :=
  addPositiveKernels productionIndexKernel
    productionRelationalSemanticKernel

@[simp] theorem productionSemanticKernel_apply
    (left right : RhetoricalIndex) :
    productionSemanticKernel left right =
      productionIndexKernel left right +
        productionRelationalSemanticKernel left right :=
  rfl

/-- Every stable concept-role index has strictly positive semantic diagonal,
including concepts absent from the finite active Gram fixture. -/
theorem productionSemanticKernel_diagonal_re_pos
    (index : RhetoricalIndex) :
    0 < (productionSemanticKernel index index).re := by
  have indexPositive : 0 < (productionIndexKernel index index).re := by
    rw [productionIndexKernel_apply]
    exact_mod_cast Nat.mul_pos
      (stableIndexFeatureNat_pos index) (stableIndexFeatureNat_pos index)
  have relationalNonnegative :
      0 ≤ (productionRelationalSemanticKernel index index).re :=
    (Complex.nonneg_iff.mp
      productionRelationalSemanticKernel.positiveSemidefinite.diag_nonneg).1
  rw [productionSemanticKernel_apply, Complex.add_re]
  linarith

theorem productionSemanticKernel_diagonal_ne_zero
    (index : RhetoricalIndex) :
    productionSemanticKernel index index ≠ 0 := by
  intro diagonalZero
  have realZero : (productionSemanticKernel index index).re = 0 := by
    simpa using congrArg Complex.re diagonalZero
  exact (ne_of_gt (productionSemanticKernel_diagonal_re_pos index)) realZero

/-- Canonical identity-preserving production kernel.  The finite artifact
stores the semantic Gram; the exact `1/1024` channel is applied by this formal
definition and by the checked runtime adapter. -/
noncomputable def productionKernel : PositiveKernel RhetoricalIndex :=
  regularizedKernel productionSemanticKernel productionEpsilon
    productionEpsilon_pos

@[simp] theorem productionKernel_apply (left right : RhetoricalIndex) :
    productionKernel left right =
      productionSemanticKernel left right +
        if left = right then (productionEpsilon : ℂ) else 0 := by
  exact regularizedKernel_apply productionSemanticKernel productionEpsilon
    productionEpsilon_pos left right

def productionFeatureChannels : List FeatureChannelBinding :=
  productionIndexFeatureChannel ::
    canonicalProductionFeatureChannels.map fun channel =>
      let specification := productionSemanticChannelSpecification channel
      ⟨specification.id, specification.authority,
        specification.weightNumerator, specification.weightDenominator⟩

def ActiveIndexBinding.rhetoricalIndex
    (binding : ActiveIndexBinding) : RhetoricalIndex :=
  (binding.concept, binding.role)

def semanticMultiplicity
    (left right : ActiveIndexBinding) : Nat :=
  stableIndexFeatureNat left.rhetoricalIndex *
      stableIndexFeatureNat right.rhetoricalIndex +
    (canonicalProductionFeatureChannels.filter fun channel =>
      productionFeatureEnabled channel left.rhetoricalIndex &&
        productionFeatureEnabled channel right.rhetoricalIndex).length

/-- Exact dense Gram encoding selected from the feature construction. -/
def productionSemanticGramWire (bindings : List ActiveIndexBinding) : List UInt8 :=
  natBytesBE 4 bindings.length ++
    bindings.flatMap fun left =>
      bindings.flatMap fun right =>
        realComplexWire (semanticMultiplicity left right) 1

/-- Typed selector for the ten canonical active bindings. -/
def productionActiveBinding
    (position : Fin productionActiveBindings.length) : ActiveIndexBinding :=
  productionActiveBindings.get position

/-- One data-driven relation channel contributes exactly its enabled-pair
indicator. -/
theorem productionChannelKernel_contribution
    (channel : ProductionFeatureChannel)
    (left right : RhetoricalIndex) :
    (productionChannelKernel channel).weight *
        (productionChannelKernel channel).kernel left right =
      if productionFeatureEnabled channel left &&
          productionFeatureEnabled channel right then 1 else 0 := by
  cases channel <;>
    cases leftEnabled : productionFeatureEnabled _ left <;>
    cases rightEnabled : productionFeatureEnabled _ right <;>
    simp [productionChannelKernel, productionFeature,
      productionSemanticChannelSpecification, leftEnabled, rightEnabled,
      scalarFeatureKernel_apply]

/-- Full-domain entry formula for the sparse relation kernel. -/
theorem productionRelationalSemanticKernel_entry
    (left right : RhetoricalIndex) :
    productionRelationalSemanticKernel left right =
      (canonicalProductionFeatureChannels.filter fun channel =>
        productionFeatureEnabled channel left &&
          productionFeatureEnabled channel right).length := by
  rw [productionRelationalSemanticKernel, featureChannelKernel_apply]
  simp_rw [productionChannelKernel_contribution]
  rw [productionFeatureChannel_univ]
  have channelsNodup : canonicalProductionFeatureChannels.Nodup := by decide
  have channelsFinset : canonicalProductionFeatureChannels.toFinset =
      ({.baseSimilarity, .directedImplication, .explicitOpposition,
        .translationalAnalogy} : Finset ProductionFeatureChannel) := by
    decide
  rw [← channelsFinset, Finset.sum_boole]
  norm_cast
  rw [← List.toFinset_filter]
  exact List.toFinset_card_of_nodup (channelsNodup.filter _)

/-- Full-domain correspondence between the serialized multiplicity formula
and the total semantic kernel.  It does not enumerate the production fixture. -/
theorem productionSemanticKernel_entry
    (left right : ActiveIndexBinding) :
    productionSemanticKernel left.rhetoricalIndex right.rhetoricalIndex =
      semanticMultiplicity left right := by
  rw [productionSemanticKernel_apply, productionIndexKernel_apply,
    productionRelationalSemanticKernel_entry]
  norm_cast

/-- Entrywise correspondence for the four sparse relation channels. -/
theorem productionActiveRelationalGram_entry
    (row column : Fin productionActiveBindings.length) :
    productionRelationalSemanticKernel
        (productionActiveBinding row).rhetoricalIndex
        (productionActiveBinding column).rhetoricalIndex =
      (canonicalProductionFeatureChannels.filter fun channel =>
        productionFeatureEnabled channel
            (productionActiveBinding row).rhetoricalIndex &&
          productionFeatureEnabled channel
            (productionActiveBinding column).rhetoricalIndex).length :=
  productionRelationalSemanticKernel_entry _ _

/-- Entrywise correspondence between the full-domain feature kernel and the
exact integer coefficients emitted into the finite production Gram. -/
theorem productionActiveGram_entry
    (row column : Fin productionActiveBindings.length) :
    productionSemanticKernel (productionActiveBinding row).rhetoricalIndex
        (productionActiveBinding column).rhetoricalIndex =
      semanticMultiplicity (productionActiveBinding row)
        (productionActiveBinding column) :=
  productionSemanticKernel_entry _ _

def productionManifest : ProductionKernelManifest where
  schemaVersion := 2
  policyVersion := productionRegularizationVersion
  semanticDefinition := productionSemanticDefinition
  epsilonNumerator := productionEpsilonNumerator
  epsilonDenominator := productionEpsilonDenominator
  roleVocabulary := canonicalRoleVocabulary
  featureChannels := productionFeatureChannels
  semanticDimension := productionActiveBindings.length
  semanticGramWire := productionSemanticGramWire productionActiveBindings
  activeBindings := productionActiveBindings
  declaredRelations := productionDeclaredRelations

def sourceProfileWire (manifest : ProductionKernelManifest) : List UInt8 :=
  natBytesBE 4 manifest.activeBindings.length ++
    manifest.activeBindings.flatMap encodeActiveBinding ++
    natBytesBE 4 manifest.declaredRelations.length ++
    manifest.declaredRelations.flatMap encodeDeclaredRelationBinding

/-- Digest of one finite active semantic Gram.  This is profile evidence and
is deliberately not an input to the identity of the total kernel. -/
def activeSemanticGramDigest (manifest : ProductionKernelManifest) : WireDigest :=
  sha256 manifest.semanticGramWire

def sourceProfileDigest (manifest : ProductionKernelManifest) : WireDigest :=
  sha256 (sourceProfileWire manifest)

private def hexDigit (value : Nat) : Char :=
  if value < 10 then Char.ofNat ('0'.toNat + value)
  else Char.ofNat ('a'.toNat + value - 10)

def digestHex (digest : WireDigest) : String :=
  String.ofList <| digest.flatMap fun byte =>
    [hexDigit (byte.toNat / 16), hexDigit (byte.toNat % 16)]

private def roleJsonLines (roles : List RhetoricalRole) : String :=
  String.intercalate ",\n" <| roles.map fun role =>
    "    \"" ++ role.name ++ "\""

/-- Exact production kernel-identity preimage.  This is generated in Lean and
then checked byte-for-byte by the Rust transport adapter. -/
def kernelIdentityPreimage (manifest : ProductionKernelManifest) : String :=
  "{\n" ++
  "  \"classification\": \"exact-production\",\n" ++
  "  \"epsilon\": {\n" ++
  "    \"denominator\": " ++ toString manifest.epsilonDenominator ++ ",\n" ++
  "    \"numerator\": " ++ toString manifest.epsilonNumerator ++ "\n" ++
  "  },\n" ++
  "  \"epsilon_version\": \"" ++ manifest.policyVersion ++ "\",\n" ++
  "  \"role_vocabulary\": [\n" ++
  roleJsonLines manifest.roleVocabulary ++ "\n" ++
  "  ],\n" ++
  "  \"schema_version\": " ++ toString manifest.schemaVersion ++ ",\n" ++
  "  \"semantic_definition_digest\": \"sha256:" ++
    digestHex (totalSemanticDefinitionDigest manifest.semanticDefinition) ++ "\",\n" ++
  "  \"semantic_definition_version\": \"" ++
    manifest.semanticDefinition.version ++ "\"\n" ++
  "}\n"

def kernelIdentityPreimageWire
    (manifest : ProductionKernelManifest) : List UInt8 :=
  (kernelIdentityPreimage manifest).toUTF8.toList

def kernelDigest (manifest : ProductionKernelManifest) : WireDigest :=
  sha256 (kernelIdentityPreimageWire manifest)

def kernelId (manifest : ProductionKernelManifest) : String :=
  "daf:rhetorical-kernel:" ++ digestHex (kernelDigest manifest)

/-- Replace only the finite executable profile while retaining the total
semantic definition and therefore the kernel identity. -/
def ProductionKernelManifest.withActiveProfile
    (manifest : ProductionKernelManifest)
    (bindings : List ActiveIndexBinding)
    (relations : List DeclaredRelationBinding := []) : ProductionKernelManifest :=
  { manifest with
    semanticDimension := bindings.length
    semanticGramWire := productionSemanticGramWire bindings
    activeBindings := bindings
    declaredRelations := relations }

@[simp]
theorem ProductionKernelManifest.withActiveProfile_semanticDefinition
    (manifest : ProductionKernelManifest)
    (bindings : List ActiveIndexBinding)
    (relations : List DeclaredRelationBinding) :
    (manifest.withActiveProfile bindings relations).semanticDefinition =
      manifest.semanticDefinition :=
  rfl

/-- Finite tables are conformance profiles, not kernel identities. -/
@[simp]
theorem ProductionKernelManifest.kernelIdentityPreimage_withActiveProfile
    (manifest : ProductionKernelManifest)
    (bindings : List ActiveIndexBinding)
    (relations : List DeclaredRelationBinding) :
    kernelIdentityPreimage (manifest.withActiveProfile bindings relations) =
      kernelIdentityPreimage manifest :=
  rfl

@[simp]
theorem ProductionKernelManifest.kernelId_withActiveProfile
    (manifest : ProductionKernelManifest)
    (bindings : List ActiveIndexBinding)
    (relations : List DeclaredRelationBinding) :
    kernelId (manifest.withActiveProfile bindings relations) = kernelId manifest := by
  simp [kernelId, kernelDigest, kernelIdentityPreimageWire]

/-- Decidable closure conditions for a production manifest. -/
def ProductionKernelManifest.Valid
    (manifest : ProductionKernelManifest) : Prop :=
  manifest.schemaVersion = 2 ∧
  manifest.policyVersion = productionRegularizationVersion ∧
  manifest.semanticDefinition = productionSemanticDefinition ∧
  manifest.epsilonNumerator = productionEpsilonNumerator ∧
  manifest.epsilonDenominator = productionEpsilonDenominator ∧
  manifest.epsilonDenominator > 0 ∧
  manifest.roleVocabulary = canonicalRoleVocabulary ∧
  manifest.featureChannels = productionFeatureChannels ∧
  (manifest.featureChannels.map FeatureChannelBinding.id).Nodup ∧
  (manifest.featureChannels.all fun channel =>
    channel.weightDenominator > 0) ∧
  manifest.semanticDimension = manifest.activeBindings.length ∧
  manifest.semanticGramWire = productionSemanticGramWire manifest.activeBindings ∧
  (manifest.activeBindings.map ActiveIndexBinding.activeIndex).Nodup ∧
  (manifest.activeBindings.map ActiveIndexBinding.activeIndex).Pairwise (· < ·) ∧
  (manifest.activeBindings.map fun binding =>
    (binding.concept, binding.role)).Nodup ∧
  (manifest.declaredRelations.map DeclaredRelationBinding.relationId).Nodup ∧
  manifest.declaredRelations.all fun relation =>
    manifest.activeBindings.any fun binding =>
      binding.concept = relation.premise ∧ binding.role = .premise ∧
    manifest.activeBindings.any fun binding =>
      binding.concept = relation.conclusion ∧ binding.role = .conclusion

instance (manifest : ProductionKernelManifest) : Decidable manifest.Valid := by
  unfold ProductionKernelManifest.Valid
  infer_instance

set_option maxRecDepth 100000 in
theorem productionManifest_valid : productionManifest.Valid := by
  refine ⟨rfl, rfl, rfl, rfl, rfl,
    by simp [productionManifest, productionEpsilonDenominator],
    rfl, rfl, ?_, ?_, rfl, rfl,
    ?_, ?_, ?_, ?_, ?_⟩
  all_goals decide

def payload (manifest : ProductionKernelManifest) : List UInt8 :=
  natBytesBE 4 manifest.schemaVersion ++
  sha256 formatDescriptorWire ++
  encodeString manifest.policyVersion ++
  natBytesBE 4 (semanticDefinitionWire manifest.semanticDefinition).length ++
  semanticDefinitionWire manifest.semanticDefinition ++
  totalSemanticDefinitionDigest manifest.semanticDefinition ++
  natBytesBE 8 manifest.epsilonNumerator ++
  natBytesBE 8 manifest.epsilonDenominator ++
  [UInt8.ofNat manifest.roleVocabulary.length] ++
  manifest.roleVocabulary.flatMap encodeRole ++
  natBytesBE 4 manifest.featureChannels.length ++
  manifest.featureChannels.flatMap encodeFeatureChannel ++
  natBytesBE 4 manifest.semanticDimension ++
  natBytesBE 4 manifest.semanticGramWire.length ++
  manifest.semanticGramWire ++
  activeSemanticGramDigest manifest ++
  sourceProfileDigest manifest ++
  encodeString (kernelIdentityPreimage manifest) ++
  kernelDigest manifest ++
  encodeString (kernelId manifest) ++
  sourceProfileWire manifest

def magic : List UInt8 := [82, 75, 77, 49] -- `RKM1`

/-- Complete framed artifact consumed by the finite Rust runtime. -/
def encode (manifest : ProductionKernelManifest) : List UInt8 :=
  let body := payload manifest
  magic ++ natBytesBE 2 2 ++ [0] ++ natBytesBE 4 body.length ++
    body ++ sha256 body

def productionManifestWire : List UInt8 := encode productionManifest

/-! ## Independent finite conformance profile

This second Lean-emitted table is intentionally not a principal subset of the
ten-row production table.  It exercises the same total semantic kernel on
three new stable concept IDs.  Runtime parsing of these bytes has candidate
authority only; theorem authority is supplied separately by a checked
`CanonicalTraceCommitment`. -/

def independentFiniteConceptAlpha : StableId :=
  ⟨"daf:rhetorical:independent-finite-alpha"⟩

def independentFiniteConceptBeta : StableId :=
  ⟨"daf:rhetorical:independent-finite-beta"⟩

def independentFiniteConceptGamma : StableId :=
  ⟨"daf:rhetorical:independent-finite-gamma"⟩

def independentFiniteActiveBindings : List ActiveIndexBinding := [
  ⟨101, independentFiniteConceptAlpha, .base⟩,
  ⟨205, independentFiniteConceptBeta, .source⟩,
  ⟨409, independentFiniteConceptGamma, .negative⟩]

/-- A genuinely different finite table over the same total semantic
definition. -/
def independentFiniteManifest : ProductionKernelManifest :=
  productionManifest.withActiveProfile independentFiniteActiveBindings

theorem independentFiniteManifest_valid : independentFiniteManifest.Valid := by
  native_decide

def independentFiniteManifestWire : List UInt8 :=
  encode independentFiniteManifest

theorem independentFiniteManifest_same_kernel_identity :
    kernelId independentFiniteManifest = kernelId productionManifest := by
  simp [independentFiniteManifest]

/-- None of the independent profile's concept-role rows occurs in the
production table. -/
theorem independentFiniteBindings_off_production_table :
    ∀ binding ∈ independentFiniteActiveBindings,
      (binding.concept, binding.role) ∉
        productionActiveBindings.map fun production =>
          (production.concept, production.role) := by
  native_decide

theorem productionRoleVocabulary_complete :
    productionManifest.roleVocabulary =
      [.base, .premise, .conclusion, .positive, .negative, .source, .target] := rfl

theorem productionEpsilon_manifest_exact :
    productionManifest.epsilonNumerator = 1 ∧
      productionManifest.epsilonDenominator = 1024 := by
  decide

theorem productionActiveBindings_nodup :
    (productionManifest.activeBindings.map fun binding =>
      (binding.concept, binding.role)).Nodup := by
  decide

theorem productionSemanticKernel_nonorthogonal :
    productionSemanticKernel (positiveRhetoricalKernelConcept, .base)
        (rhetoricalHilbertCompletionConcept, .base) =
      stableIndexFeatureNat (positiveRhetoricalKernelConcept, .base) *
        stableIndexFeatureNat (rhetoricalHilbertCompletionConcept, .base) + 1 := by
  rw [productionSemanticKernel_apply, productionIndexKernel_apply]
  simp [productionRelationalSemanticKernel, productionChannelKernel,
    productionFeature, productionFeatureEnabled,
    productionSemanticChannelSpecification,
    featureChannelKernel_apply, scalarFeatureKernel_apply]

theorem productionDirectedFeature_forward :
    productionSemanticKernel (positiveRhetoricalKernelConcept, .premise)
      (rhetoricalHilbertCompletionConcept, .conclusion) =
        stableIndexFeatureNat (positiveRhetoricalKernelConcept, .premise) *
          stableIndexFeatureNat
            (rhetoricalHilbertCompletionConcept, .conclusion) + 1 := by
  rw [productionSemanticKernel_apply, productionIndexKernel_apply]
  simp [productionRelationalSemanticKernel, productionChannelKernel,
    productionFeature, productionFeatureEnabled,
    productionSemanticChannelSpecification,
    featureChannelKernel_apply, scalarFeatureKernel_apply]

theorem productionDirectedFeature_reverse :
    productionSemanticKernel (rhetoricalHilbertCompletionConcept, .premise)
      (positiveRhetoricalKernelConcept, .conclusion) =
        stableIndexFeatureNat (rhetoricalHilbertCompletionConcept, .premise) *
          stableIndexFeatureNat
            (positiveRhetoricalKernelConcept, .conclusion) := by
  rw [productionSemanticKernel_apply, productionIndexKernel_apply]
  simp [productionRelationalSemanticKernel, productionChannelKernel,
    productionFeature, productionFeatureEnabled,
    productionSemanticChannelSpecification,
    featureChannelKernel_apply, scalarFeatureKernel_apply]

end DAF.Rhetorical.KernelManifest
