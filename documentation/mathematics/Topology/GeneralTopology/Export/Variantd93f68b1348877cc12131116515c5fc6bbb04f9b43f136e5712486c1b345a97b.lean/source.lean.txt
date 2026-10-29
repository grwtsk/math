-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.JsonEscapeChar.Variante38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.JsonEscapeChar.Variante38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f","mathematical_subject":"Topology.GeneralTopology","original_sha256":"e38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/AST/Export.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean
import Surface
import Surface.AST.DeclarationGraph
import Surface.AST.ModuleGraph
import Surface.AST.Trusted


namespace GRWTSK.Topology.GeneralTopology.JsonEscapeChar.Variante38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f

open Lean

namespace Surface

namespace AST

def jsonEscapeChar : Char -> String
  | '"' => "\\\""
  | '\\' => "\\\\"
  | '\n' => "\\n"
  | '\r' => "\\r"
  | '\t' => "\\t"
  | c => String.singleton c

def jsonString (value : String) : String :=
  "\"" ++ value.foldl (fun acc c => acc ++ jsonEscapeChar c) "" ++ "\""

def jsonBool (value : Bool) : String :=
  if value then "true" else "false"

def jsonStringArray (values : List String) : String :=
  "[" ++ String.intercalate "," (values.map jsonString) ++ "]"

def jsonStringOrNull : Option String -> String
  | some value => jsonString value
  | none => "null"

def uniqueSortedStrings (values : List String) : List String :=
  values.eraseDups.mergeSort (fun a b => a < b)

def constantKind : ConstantInfo -> String
  | .axiomInfo _ => "external"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

def proofStatusForConstant (info : ConstantInfo) : String :=
  if info.isTheorem then
    "checked_by_lean"
  else if info.isAxiom then
    "external_reference"
  else
    "not_a_theorem"

def axiomExternalStatus (info : ConstantInfo) : String :=
  if info.isAxiom then
    "axiom_or_external"
  else if info.isTheorem then
    "kernel_checked_theorem"
  else
    "not_external_axiom"

def expressionDependencyNames (expr : Expr) : List String :=
  expr.getUsedConstants.toList.map Name.toString

def constantDependencyNames (info : ConstantInfo) : List String :=
  let typeDeps := expressionDependencyNames info.type
  let valueDeps :=
    match info.value? true with
    | some value => expressionDependencyNames value
    | none => []
  uniqueSortedStrings ((typeDeps ++ valueDeps).filter fun name =>
    name != info.name.toString)

def surfaceDependencyNames (deps : List String) : List String :=
  deps.filter fun name => name.startsWith "Surface."

def importedDependencyNames (deps : List String) : List String :=
  deps.filter fun name => !(name.startsWith "Surface.")

def prismaticTheoremSeedGateNames : List String := [
  "Surface.Prismatic.HodgeTateTheoremSeed",
  "Surface.Prismatic.HasHodgeTateTheoremSeed",
  "Surface.Prismatic.currentHodgeTateTheoremSeed?",
  "Surface.Prismatic.currentHodgeTateTheoremSeed_absent"
]

def majorTheoremObligationPatterns : List String :=
  prismaticTheoremSeedGateNames ++ [
    "Surface.Hilbert.PrismaticEmbeddingTheoremCertificate",
    "Surface.Prismatic.PrismaticHilbertEmbeddingTheoremCertificate",
    "Surface.Prismatic.PrismaticEnvelopeTheoremCertificate",
    "Surface.Hilbert.TraceFormulaTheoremCertificate",
    "Surface.Flow.ConditionalHilbertTraceFormulaTheoremCertificate",
    "Surface.Spectral.PackedPrismaticHilbertTheoremInput",
    "Surface.Spectral.HilbertTraceBridgeTheoremCertificate",
    "Surface.Arithmetic.EllipticCurve.BSD.PackedSmoothBSDTheoremInput"
  ]

def majorConstructionInputPatterns : List String := [
    "Surface.Arithmetic.GaloisCohomology.FiniteH1",
    "Surface.Arithmetic.GaloisCohomology.resFiniteH1",
    "Surface.Arithmetic.GaloisCohomology.FiniteSelmerProblem",
    "Surface.Arithmetic.GaloisCohomology.FiniteSelmerProblem.selmerSubgroup",
    "Surface.Arithmetic.GaloisCohomology.FiniteKummerSelmerData",
    "Surface.Arithmetic.GaloisCohomology.FiniteKummerSelmerData.globalImageLandsInSelmer_of_local_conditions",
    "Surface.Hilbert.PrismaticEmbedding",
    "Surface.Prismatic.EdgeRelaxation.LiftCertificate",
    "Surface.Prismatic.PrismaticCohomology.admissibleForMajorProofInput"
  ]

def finiteStructuralInputPatterns : List String := [
    "Surface.Homology.KakeyaTubeCoverCertificate",
    "Surface.Homology.standardKakeyaTubeCoverRefined_finiteStructuralInput"
  ]

def readinessDashboardPatterns : List String := [
    "Surface.Flow.ConditionalHilbertTraceFormulaScaffold.theoremReady",
    "Surface.Flow.TraceTriple.theoremReady"
  ]

def certificateGatePatterns : List String := [
    "Surface.Prismatic.EdgeRelaxation.LiftCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.unitBooleanLiftCertificate_certificateAccessor",
    "Surface.Prismatic.CrystallineComparisonCertificate.certifiedForMajorProof",
    "Surface.Prismatic.CrystallineComparisonCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.HodgeTateComparisonCertificate.certifiedForMajorProof",
    "Surface.Prismatic.HodgeTateComparisonCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.DeRhamComparisonCertificate.certifiedForMajorProof",
    "Surface.Prismatic.DeRhamComparisonCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.EtaleComparisonCertificate.certifiedForMajorProof",
    "Surface.Prismatic.EtaleComparisonCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.BaseChangeComparisonCertificate.certifiedForMajorProof",
    "Surface.Prismatic.BaseChangeComparisonCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.FrobeniusImageCertificate.certifiedForMajorProof",
    "Surface.Prismatic.FrobeniusImageCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.NygaardFiltration.certificateAccessor_of_fields",
    "Surface.Prismatic.ConjugateFiltration.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.NygaardConjugateComparisonCertificate.certifiedForMajorProof",
    "Surface.Prismatic.NygaardConjugateComparisonCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.unitNygaardConjugateComparison_certificateAccessor",
    "Surface.Prismatic.PrismaticEnvelope.certifiedForMajorProof",
    "Surface.Prismatic.PrismaticEnvelope.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.EnvelopeBaseChangeCertificate.certifiedForMajorProof",
    "Surface.Prismatic.EnvelopeBaseChangeCertificate.certifiedForMajorProof_of_field",
    "Surface.Prismatic.EnvelopeFlatLocalizationCertificate.certifiedForMajorProof",
    "Surface.Prismatic.EnvelopeFlatLocalizationCertificate.certifiedForMajorProof_of_field",
    "Surface.Prismatic.PrismaticEnvelopeTheoremCertificate.certifiedForMajorProof",
    "Surface.Prismatic.PrismaticEnvelopeTheoremCertificate.certifiedForMajorProof_of_field",
    "Surface.Prismatic.unitPrismaticEnvelope_certificateAccessor",
    "Surface.Hilbert.PrismaticEmbeddingTheoremCertificate.certifiedForMajorProof",
    "Surface.Hilbert.PrismaticEmbeddingTheoremCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.PrismaticHilbertEmbeddingTheoremCertificate.certifiedForMajorProof_of_fields"
  ]

def currentMajorGatePatterns : List String :=
  majorTheoremObligationPatterns ++
  majorConstructionInputPatterns ++
  finiteStructuralInputPatterns ++
  readinessDashboardPatterns ++
  certificateGatePatterns

def manifestGatePatternMatches (pattern declarationName : String) : Bool :=
  declarationName = pattern

def majorGateAuthorityClass? (name : String) : Option String :=
  if majorTheoremObligationPatterns.any (fun pattern =>
      manifestGatePatternMatches pattern name) then
    some "theorem_obligation"
  else if majorConstructionInputPatterns.any (fun pattern =>
      manifestGatePatternMatches pattern name) then
    some "construction_input"
  else if finiteStructuralInputPatterns.any (fun pattern =>
      manifestGatePatternMatches pattern name) then
    some "finite_structural_input"
  else if readinessDashboardPatterns.any (fun pattern =>
      manifestGatePatternMatches pattern name) then
    some "readiness_dashboard"
  else if certificateGatePatterns.any (fun pattern =>
      manifestGatePatternMatches pattern name) then
    some "certificate_gate"
  else
    none

def currentMajorGateName? (name : String) : Option String :=
  if name ∈ prismaticTheoremSeedGateNames then
    some name
  else if name = "Surface.Hilbert.PrismaticEmbedding" then
    some "Hilbert.PrismaticEmbedding"
  else if name.startsWith "Surface.Hilbert.PrismaticEmbeddingTheoremCertificate" then
    some "Hilbert.PrismaticEmbeddingTheoremCertificate"
  else if name.startsWith "Surface.Arithmetic.GaloisCohomology.FiniteH1" then
    some "Arithmetic.GaloisCohomology.FiniteH1"
  else if name.startsWith "Surface.Arithmetic.GaloisCohomology.resFiniteH1" then
    some "Arithmetic.GaloisCohomology.resFiniteH1"
  else if name.startsWith "Surface.Arithmetic.GaloisCohomology.FiniteSelmerProblem" then
    some "Arithmetic.GaloisCohomology.FiniteSelmerProblem"
  else if name.startsWith "Surface.Arithmetic.GaloisCohomology.FiniteKummerSelmerData" then
    some "Arithmetic.GaloisCohomology.FiniteKummerSelmerData"
  else if name.startsWith "Surface.Prismatic.PrismaticHilbertEmbeddingTheoremCertificate" then
    some "Prismatic.PrismaticHilbertEmbeddingTheoremCertificate"
  else if name.startsWith "Surface.Prismatic.EdgeRelaxation.LiftCertificate" then
    some "Prismatic.EdgeRelaxation.LiftCertificate"
  else if name = "Surface.Prismatic.unitBooleanLiftCertificate_certificateAccessor" then
    some "Prismatic.unitBooleanLiftCertificate_certificateAccessor"
  else if name.startsWith "Surface.Prismatic.PrismaticCohomology.admissibleForMajorProofInput" then
    some "Prismatic.PrismaticCohomology.admissibleForMajorProofInput"
  else if name.startsWith "Surface.Prismatic.CrystallineComparisonCertificate.certifiedForMajorProof" then
    some "Prismatic.CrystallineComparisonCertificate.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.HodgeTateComparisonCertificate.certifiedForMajorProof" then
    some "Prismatic.HodgeTateComparisonCertificate.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.DeRhamComparisonCertificate.certifiedForMajorProof" then
    some "Prismatic.DeRhamComparisonCertificate.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.EtaleComparisonCertificate.certifiedForMajorProof" then
    some "Prismatic.EtaleComparisonCertificate.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.BaseChangeComparisonCertificate.certifiedForMajorProof" then
    some "Prismatic.BaseChangeComparisonCertificate.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.FrobeniusImageCertificate.certifiedForMajorProof" then
    some "Prismatic.FrobeniusImageCertificate.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.NygaardConjugateComparisonCertificate.certifiedForMajorProof" then
    some "Prismatic.NygaardConjugateComparisonCertificate.certifiedForMajorProof"
  else if name = "Surface.Prismatic.unitNygaardConjugateComparison_certificateAccessor" then
    some "Prismatic.unitNygaardConjugateComparison_certificateAccessor"
  else if name.startsWith "Surface.Prismatic.PrismaticEnvelope.certifiedForMajorProof" then
    some "Prismatic.PrismaticEnvelope.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.EnvelopeBaseChangeCertificate.certifiedForMajorProof" then
    some "Prismatic.EnvelopeBaseChangeCertificate.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.EnvelopeFlatLocalizationCertificate.certifiedForMajorProof" then
    some "Prismatic.EnvelopeFlatLocalizationCertificate.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.PrismaticEnvelopeTheoremCertificate.certifiedForMajorProof" then
    some "Prismatic.PrismaticEnvelopeTheoremCertificate.certifiedForMajorProof"
  else if name = "Surface.Prismatic.unitPrismaticEnvelope_certificateAccessor" then
    some "Prismatic.unitPrismaticEnvelope_certificateAccessor"
  else if name.startsWith "Surface.Hilbert.TraceFormulaTheoremCertificate" then
    some "Hilbert.TraceFormulaTheoremCertificate"
  else if name.startsWith "Surface.Flow.ConditionalHilbertTraceFormulaTheoremCertificate" then
    some "Flow.ConditionalHilbertTraceFormulaTheoremCertificate"
  else if name.startsWith "Surface.Homology.KakeyaTubeCoverCertificate" then
    some "Homology.KakeyaTubeCoverCertificate"
  else if name = "Surface.Homology.standardKakeyaTubeCoverRefined_finiteStructuralInput" then
    some "Homology.standardKakeyaTubeCoverRefined_finiteStructuralInput"
  else if name = "Surface.Spectral.PackedPrismaticHilbertTheoremInput" then
    some "Spectral.PackedPrismaticHilbertTheoremInput"
  else if name.startsWith "Surface.Spectral.HilbertTraceBridgeTheoremCertificate" then
    some "Spectral.HilbertTraceBridgeTheoremCertificate"
  else if name = "Surface.Flow.ConditionalHilbertTraceFormulaScaffold.theoremReady" then
    some "Flow.ConditionalHilbertTraceFormulaScaffold.theoremReady"
  else if name = "Surface.Flow.TraceTriple.theoremReady" then
    some "Flow.TraceTriple.theoremReady"
  else if name = "Surface.Arithmetic.EllipticCurve.BSD.PackedSmoothBSDTheoremInput" then
    some "Arithmetic.EllipticCurve.BSD.PackedSmoothBSDTheoremInput"
  else if certificateGatePatterns.any (fun pattern =>
      manifestGatePatternMatches pattern name) then
    some "certificate gate"
  else
    none

def certificateOnlyDeclarationNames : List String := [
  "Surface.Arithmetic.EllipticCurve.AutomorphicLFunctionObjectDescriptor.certifiedForBSD",
  "Surface.Arithmetic.EllipticCurve.AutomorphicLFunctionObjectDescriptor.certifiedForBSD_of_fields",
  "Surface.Arithmetic.EllipticCurve.HasseWeilAutomorphicObjectCompatibilityCertificate.certifiedForBSD",
  "Surface.Arithmetic.EllipticCurve.HasseWeilAutomorphicObjectCompatibilityCertificate.certifiedForBSD_of_fields",
  "Surface.Arithmetic.EllipticCurve.AutomorphicAnalyticSourceDescriptor.certifiedForBSD",
  "Surface.Arithmetic.EllipticCurve.AutomorphicAnalyticSourceDescriptor.certifiedForBSD_of_fields",
  "Surface.Arithmetic.EllipticCurve.HasseWeilAutomorphicAnalyticSourceCompatibilityCertificate.certifiedForBSD",
  "Surface.Arithmetic.EllipticCurve.HasseWeilAutomorphicAnalyticSourceCompatibilityCertificate.certifiedForBSD_of_fields",
  "Surface.Arithmetic.EllipticCurve.AutomorphicAnalyticSourceKindSupportCertificate.certifiedForBSD",
  "Surface.Arithmetic.EllipticCurve.AutomorphicAnalyticSourceKindSupportCertificate.certifiedForBSD_of_fields",
  "Surface.Arithmetic.EllipticCurve.HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate.certifiedForBSD",
  "Surface.Arithmetic.EllipticCurve.HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate.certifiedForBSD_of_fields",
  "Surface.Arithmetic.EllipticCurve.BSD.BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate.certifiedForBSD",
  "Surface.Arithmetic.EllipticCurve.BSD.BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate.certifiedForBSD_of_fields",
  "Surface.Arithmetic.EllipticCurve.BSD.BSDRootNumberParityCompatibilityCertificate.certifiedForBSD",
  "Surface.Arithmetic.EllipticCurve.BSD.BSDRootNumberParityCompatibilityCertificate.certifiedForBSD_of_fields"
]

def certificateAccessorSuffixes : List String := [
  ".admissibleInput_of_fields",
  "_admissibleInput_of_fields",
  ".usableForMajorProof_of_fields",
  "_usableForMajorProof_of_fields",
  ".usableForFinalTheorem_of_fields",
  "_usableForFinalTheorem_of_fields",
  ".certifiedForMajorProof_of_fields",
  "_certifiedForMajorProof_of_fields",
  ".certifiedForBSD_of_fields",
  "_certifiedForBSD_of_fields"
]

def declarationNameIsCertificateAccessor (name : String) : Bool :=
  certificateAccessorSuffixes.any fun suffix => name.endsWith suffix

def declarationNameIsCertificateDestructor (name : String) : Bool :=
  let hasDestructorSuffix :=
    name.endsWith "_of_fields" ||
    name.endsWith "_of_certificate" ||
    name.endsWith "_of_input"
  let hasCertificateGateBase :=
    name.contains "certifiedForBSD" ||
    name.contains "certifiedForMajorProof" ||
    name.contains "usableForMajorProof" ||
    name.contains "usableForFinalTheorem" ||
    name.contains "admissibleInput" ||
    name.contains "admissibleFor" ||
    name.contains "ready"
  hasDestructorSuffix && hasCertificateGateBase

def theoremFacingWhitelistNames : List String := []

def mathematicalTheoremFacingWhitelistNames : List String := [
  "Surface.Arithmetic.GaloisCohomology.oneCoboundary_is_oneCocycle",
  "Surface.Arithmetic.GaloisCohomology.OneCohomologous.refl",
  "Surface.Arithmetic.GaloisCohomology.OneCohomologous.symm",
  "Surface.Arithmetic.GaloisCohomology.OneCohomologous.trans",
  "Surface.Arithmetic.GaloisCohomology.resFiniteH1_id",
  "Surface.Arithmetic.GaloisCohomology.resFiniteH1_comp",
  "Surface.Arithmetic.GaloisCohomology.resFiniteH1_zero",
  "Surface.Arithmetic.GaloisCohomology.resFiniteH1_add",
  "Surface.Arithmetic.GaloisCohomology.resFiniteH1_neg"
]

def implementationTheoremFacingNamePatterns : List String := [
  "_rejects_",
  "_usableFor",
  "_admissibleInput",
  "_certificateInput",
  "_certificateAccessor"
]

def implementationTheoremFacingNameSuffixes : List String := [
  "_of_fields",
  "_not_ready",
  "_no_finite_evidence",
  "_no_finite_certificate",
  "_declares_no_finite_evidence"
]

def declarationNameHasImplementationTheoremFacingPattern
    (name : String) : Bool :=
  implementationTheoremFacingNamePatterns.any (fun pattern =>
      name.contains pattern) ||
    implementationTheoremFacingNameSuffixes.any (fun suffix =>
      name.endsWith suffix)

def descriptorOnlyPrismaticSectionPrefixes : List String := [
  "Surface.Prismatic.DescriptorPresheafSection",
  "Surface.Prismatic.DescriptorSectionEqualityData",
  "Surface.Prismatic.RestrictionDatum",
  "Surface.Prismatic.OverlapCompatibilityData",
  "Surface.Prismatic.MatchingFamily",
  "Surface.Prismatic.GluingDatum",
  "Surface.Prismatic.GluingUniquenessData"
]

def declarationNameIsDescriptorOnlyPrismaticSectionInfrastructure
    (name : String) : Bool :=
  descriptorOnlyPrismaticSectionPrefixes.any fun sectionPrefix =>
    name = sectionPrefix || name.startsWith (sectionPrefix ++ ".")

def declarationNameIsCertificateGate (name : String) : Bool :=
  name.contains "certifiedForBSD" ||
  name.contains "certifiedForMajorProof" ||
  name.contains "admissibleFor" ||
  name.contains "theoremReady" ||
  name.contains "ready" ||
  name.contains "admissibleFinite" ||
  name.contains "finiteStructuralInput" ||
  name.contains "finiteStructuralReady" ||
  name.contains "refereeReady" ||
  name.contains "dashboardReady"

def declarationProofBoundaryClass (info : ConstantInfo) : String :=
  let name := info.name.toString
  if name ∈ certificateOnlyDeclarationNames then
    "certificate-only"
  else if declarationNameIsCertificateAccessor name then
    "certificate-only"
  else if declarationNameIsDescriptorOnlyPrismaticSectionInfrastructure name then
    "certificate-only"
  else if declarationNameIsCertificateDestructor name then
    "certificate-only"
  else if declarationNameIsCertificateGate name &&
      !(name ∈ theoremFacingWhitelistNames) then
    "certificate-only"
  else if name.contains "Certificate" || name.contains "Assumption" ||
      name.contains "Conjecture" || name.contains "Scaffold" ||
      name.contains "Placeholder" then
    "certificate-only"
  else if info.isTheorem then
    "theorem-facing"
  else
    "interface/definition"

def declarationIsTheoremFacing (info : ConstantInfo) : Bool :=
  declarationProofBoundaryClass info = "theorem-facing"

def declarationIsMathematicalTheoremFacing (info : ConstantInfo) : Bool :=
  declarationIsTheoremFacing info &&
    info.name.toString ∈ mathematicalTheoremFacingWhitelistNames

def declarationIsImplementationTheoremFacing (info : ConstantInfo) : Bool :=
  declarationIsTheoremFacing info &&
    !declarationIsMathematicalTheoremFacing info

def forbiddenAuthorityReasons (info : ConstantInfo) (deps : List String) : List String :=
  let legacyReasons :=
    if deps.any (fun name => name.startsWith "Surface.Legacy.") then
      ["legacy_dependency"]
    else
      []
  let fixtureReasons :=
    if deps.any (fun name => name.startsWith "Surface.GenerateFixtures") then
      ["fixture_dependency"]
    else
      []
  let externalReasons :=
    if info.isAxiom then
      ["axiom_or_external_declaration"]
    else
      []
  legacyReasons ++ fixtureReasons ++ externalReasons

def theoremConeAuthorityJson (info : ConstantInfo) (deps : List String) : String :=
  let gateName? := currentMajorGateName? info.name.toString
  let gateAuthorityClass? := majorGateAuthorityClass? info.name.toString
  let reasons := forbiddenAuthorityReasons info deps
  "{\"isCurrentMajorGate\":" ++ jsonBool gateName?.isSome ++
  ",\"gateName\":" ++ jsonStringOrNull gateName? ++
  ",\"gateAuthorityClass\":" ++ jsonStringOrNull gateAuthorityClass? ++
  ",\"requiresCheckedProofStatus\":" ++ jsonBool (gateName?.isSome && info.isTheorem) ++
  ",\"forbiddenAuthority\":" ++ jsonBool (gateName?.isSome && !reasons.isEmpty) ++
  ",\"forbiddenAuthorityReasons\":" ++ jsonStringArray reasons ++ "}"

def declarationConeLabel (name : String) : String :=
  if name.startsWith "Surface.Arithmetic.EllipticCurve.BSD" then
    "BSD"
  else if name.startsWith "Surface.Hilbert" ||
      name.startsWith "Surface.Spectral.HilbertTrace" then
    "RH/HilbertTrace"
  else if name.startsWith "Surface.Prismatic" then
    "PrismaticComparison"
  else if name.startsWith "Surface.Homology.OrientedFlatness" ||
      name.startsWith "Surface.Homology.KakeyaTubeCover" then
    "KakeyaOrientedFlatness"
  else if name.startsWith "Surface.Flow.AnalyticPDE" ||
      name.startsWith "Surface.Flow.Ricci" then
    "AnalyticPDE/Ricci"
  else if name.startsWith "Surface.Homology.FiniteOS" then
    "FiniteOSHomology"
  else if name.startsWith "Surface.Spectral.FiniteGraphLaplacianConvergence" ||
      name.startsWith "Surface.Spectral.AnalyticPDE" then
    "FiniteHilbertSpectralConvergence"
  else if name.startsWith "Surface.Boolean" then
    "BooleanFiniteInfrastructure"
  else
    "SharedInfrastructure"

def sourceFileHintForDeclaration (name : String) : String :=
  if name ∈ mathematicalTheoremFacingWhitelistNames then
    "formal/Surface/Arithmetic/GaloisCohomology/Finite.lean"
  else if name.startsWith "Surface.Arithmetic.EllipticCurve.BSD" then
    "formal/Surface/Arithmetic/EllipticCurve/BSD"
  else if name.startsWith "Surface.Hilbert" then
    "formal/Surface/Hilbert"
  else if name.startsWith "Surface.Spectral" then
    "formal/Surface/Spectral"
  else if name.startsWith "Surface.Prismatic" then
    "formal/Surface/Prismatic"
  else if name.startsWith "Surface.Homology" then
    "formal/Surface/Homology"
  else if name.startsWith "Surface.Flow" then
    "formal/Surface/Flow"
  else if name.startsWith "Surface.Boolean" then
    "formal/Surface/Boolean"
  else
    "formal/Surface"

def sourceLineHintForDeclaration (name : String) : Nat :=
  if name = "Surface.Arithmetic.GaloisCohomology.oneCoboundary_is_oneCocycle" then
    276
  else if name = "Surface.Arithmetic.GaloisCohomology.OneCohomologous.refl" then
    391
  else if name = "Surface.Arithmetic.GaloisCohomology.OneCohomologous.symm" then
    402
  else if name = "Surface.Arithmetic.GaloisCohomology.OneCohomologous.trans" then
    417
  else if name = "Surface.Arithmetic.GaloisCohomology.resFiniteH1_id" then
    682
  else if name = "Surface.Arithmetic.GaloisCohomology.resFiniteH1_comp" then
    692
  else if name = "Surface.Arithmetic.GaloisCohomology.resFiniteH1_zero" then
    707
  else if name = "Surface.Arithmetic.GaloisCohomology.resFiniteH1_add" then
    716
  else if name = "Surface.Arithmetic.GaloisCohomology.resFiniteH1_neg" then
    729
  else
    0

def declarationCertificatePackageNames (deps : List String) : List String :=
  surfaceDependencyNames deps |>.filter fun name =>
    name.contains "Certificate" ||
    name.contains "TheoremInput" ||
    name.contains "Witness" ||
    name.contains "Seed" ||
    name.contains "certifiedFor"

def declarationAnnalsPageJson (info : ConstantInfo) (deps : List String) : String :=
  let name := info.name.toString
  let boundaryClass := declarationProofBoundaryClass info
  let theoremStatement :=
    if info.isTheorem && boundaryClass = "theorem-facing" then
      some name
    else
      none
  let given :=
    surfaceDependencyNames deps
  let certificatePackages :=
    if boundaryClass = "certificate-only" then
      [name] ++ declarationCertificatePackageNames deps
    else
      declarationCertificatePackageNames deps
  let hardInput :=
    if certificatePackages.isEmpty then
      ["explicit Lean hypotheses and imported interfaces"]
    else
      certificatePackages
  let proves :=
    if theoremStatement.isSome then
      ["the named Lean theorem under its exact hypotheses"]
    else
      ["interface or certificate package only; no public theorem statement"]
  let notProved := [
    "external grand-challenge theorem beyond the named Lean declaration",
    "authority from dashboards, labels, finite syntax, or generated fixtures"
  ]
  "{\"cone\":" ++ jsonString (declarationConeLabel name) ++
  ",\"exactTheoremStatement\":" ++ jsonStringOrNull theoremStatement ++
  ",\"given\":" ++ jsonStringArray given ++
  ",\"hardInput\":" ++ jsonStringArray hardInput ++
  ",\"proofDependencies\":" ++ jsonStringArray given ++
  ",\"assumptionBudget\":" ++ jsonStringArray [
      "all hypotheses are explicit in the Lean declaration type",
      "certificate packages are consumed as inputs, not public theorem results"
    ] ++
  ",\"whatThisTheoremProves\":" ++ jsonStringArray proves ++
  ",\"whatThisTheoremDoesNotProve\":" ++ jsonStringArray notProved ++
  ",\"certificatePackagesConsumed\":" ++ jsonStringArray certificatePackages ++
  ",\"sourceFile\":" ++ jsonString (sourceFileHintForDeclaration name) ++ "}"

def currentMajorGateManifestJson : String :=
  jsonStringArray currentMajorGatePatterns

def categorizedMajorGateManifestJson : String :=
  "{\"theoremObligations\":" ++ jsonStringArray majorTheoremObligationPatterns ++
  ",\"constructionInputs\":" ++ jsonStringArray majorConstructionInputPatterns ++
  ",\"finiteStructuralInputs\":" ++ jsonStringArray finiteStructuralInputPatterns ++
  ",\"readinessDashboards\":" ++ jsonStringArray readinessDashboardPatterns ++
  ",\"certificateGates\":" ++ jsonStringArray certificateGatePatterns ++ "}"

def constantInfoJson (info : ConstantInfo) : String :=
  let deps := constantDependencyNames info
  "{\"name\":" ++ jsonString info.name.toString ++
  ",\"kind\":" ++ jsonString (constantKind info) ++
  ",\"declarationKind\":" ++ jsonString (constantKind info) ++
  ",\"proofStatus\":" ++ jsonString (proofStatusForConstant info) ++
  ",\"axiomExternalStatus\":" ++ jsonString (axiomExternalStatus info) ++
  ",\"isTheorem\":" ++ jsonBool info.isTheorem ++
  ",\"proofBoundaryClass\":" ++ jsonString (declarationProofBoundaryClass info) ++
  ",\"isTheoremFacing\":" ++ jsonBool (declarationIsTheoremFacing info) ++
  ",\"mathematicalTheoremFacing\":" ++
    jsonBool (declarationIsMathematicalTheoremFacing info) ++
  ",\"implementationTheoremFacing\":" ++
    jsonBool (declarationIsImplementationTheoremFacing info) ++
  ",\"isAxiomOrExternal\":" ++ jsonBool info.isAxiom ++
  ",\"dependencies\":" ++ jsonStringArray deps ++
  ",\"surfaceDependencies\":" ++ jsonStringArray (surfaceDependencyNames deps) ++
  ",\"importedDependencyNames\":" ++ jsonStringArray (importedDependencyNames deps) ++
  ",\"theoremConeAuthority\":" ++ theoremConeAuthorityJson info deps ++
  ",\"annalsTheoremPage\":" ++ declarationAnnalsPageJson info deps ++
  ",\"sourceFile\":" ++ jsonString (sourceFileHintForDeclaration info.name.toString) ++
  ",\"sourceLine\":" ++ toString (sourceLineHintForDeclaration info.name.toString) ++
  ",\"type\":" ++ jsonString (toString info.type) ++ "}"

def isSurfaceDeclaration (info : ConstantInfo) : Bool :=
  info.name.toString.startsWith "Surface."

def declarationLess (a b : ConstantInfo) : Bool :=
  a.name.toString < b.name.toString

def surfaceDeclarationsJson (env : Environment) : String :=
  let declarations :=
    (env.constants.toList.map Prod.snd).filter isSurfaceDeclaration |>.mergeSort declarationLess
  "[" ++ String.intercalate "," (List.map constantInfoJson declarations) ++ "]"

def manifestGateSelfCheckFailures (env : Environment) : List String :=
  let declarationNames :=
    (env.constants.toList.map (fun pair => pair.snd.name.toString)).filter
      (fun name => name.startsWith "Surface.")
  currentMajorGatePatterns.filter fun pattern =>
    !(declarationNames.any fun declarationName =>
      manifestGatePatternMatches pattern declarationName)

def theoremObligationForbiddenSubstrings : List String := [
  "unit",
  "example",
  "usableForMajorProof",
  "usableForFinalTheorem",
  "admissibleInput",
  "certifiedForMajorProof",
  "certifiedForBSD",
  "admissibleFor",
  "ready",
  "finiteStructural"
]

def theoremObligationPatternHasForbiddenAuthorityLeak (pattern : String) : Bool :=
  theoremObligationForbiddenSubstrings.any fun forbidden =>
    pattern.contains forbidden

def theoremObligationAuthorityLeakFailures : List String :=
  majorTheoremObligationPatterns.filter theoremObligationPatternHasForbiddenAuthorityLeak

def theoremFacingDescriptorSectionForbiddenNames : List String := [
  "Surface.Prismatic.PresheafSection",
  "Surface.Prismatic.LabelledPresheafSection",
  "Surface.Prismatic.DescriptorPresheafSection",
  "Surface.Prismatic.SectionEqualityData",
  "Surface.Prismatic.LabelledSectionEqualityData",
  "Surface.Prismatic.DescriptorSectionEqualityData"
]

def declarationMentionsForbiddenDescriptorSection
    (info : ConstantInfo)
    (deps : List String) : Bool :=
  let typeText := toString info.type
  theoremFacingDescriptorSectionForbiddenNames.any fun forbidden =>
    typeText.contains forbidden ||
      deps.any (fun dep => dep = forbidden || dep.startsWith (forbidden ++ "."))

def theoremFacingDescriptorSectionFailures (env : Environment) : List String :=
  env.constants.toList.filterMap fun pair =>
    let info := pair.snd
    let deps := constantDependencyNames info
    if isSurfaceDeclaration info &&
        declarationIsTheoremFacing info &&
        declarationMentionsForbiddenDescriptorSection info deps then
      some info.name.toString
    else
      none

def mathematicalTheoremFacingImplementationPatternFailures
    (env : Environment) : List String :=
  env.constants.toList.filterMap fun pair =>
    let info := pair.snd
    let name := info.name.toString
    if isSurfaceDeclaration info &&
        declarationIsMathematicalTheoremFacing info &&
        declarationNameHasImplementationTheoremFacingPattern name then
      some name
    else
      none

def nameFromDottedString (name : String) : Name :=
  name.splitOn "." |>.foldl (fun acc part => Name.str acc part) Name.anonymous

def mathematicalTheoremFacingWhitelistFailures
    (env : Environment) : List String :=
  mathematicalTheoremFacingWhitelistNames.filter fun name =>
    match env.find? (nameFromDottedString name) with
    | none => true
    | some info =>
        let deps := constantDependencyNames info
        !info.isTheorem ||
          !declarationIsTheoremFacing info ||
          deps.any (fun dep => dep.startsWith "Surface.Legacy.") ||
          declarationNameHasImplementationTheoremFacingPattern name ||
          name.contains "ready" ||
          name.contains "Readiness" ||
          name.contains "certifiedFor" ||
          name.contains "admissible" ||
          name.contains "usableFor" ||
          name.contains "Certificate" ||
          name.contains "certificate" ||
          name.contains "Input" ||
          name.contains "input" ||
          name.contains "dashboard" ||
          name.contains "Fixture" ||
          name.contains "fixture"

def ensureManifestGatesMatchExportedDeclarations (env : Environment) : IO Unit := do
  let failures := manifestGateSelfCheckFailures env
  unless failures.isEmpty do
    throw <| IO.userError <|
      "Surface.AST.Export theorem-cone manifest contains unmatched gate patterns: " ++
        String.intercalate ", " failures
  let authorityLeaks := theoremObligationAuthorityLeakFailures
  unless authorityLeaks.isEmpty do
    throw <| IO.userError <|
      "Surface.AST.Export theorem-obligation manifest contains certificate/dashboard accessors: " ++
        String.intercalate ", " authorityLeaks
  let descriptorLeaks := theoremFacingDescriptorSectionFailures env
  unless descriptorLeaks.isEmpty do
    throw <| IO.userError <|
      "Surface.AST.Export theorem-facing declarations mention descriptor-level prismatic sections: " ++
        String.intercalate ", " descriptorLeaks
  let implementationPatternLeaks :=
    mathematicalTheoremFacingImplementationPatternFailures env
  unless implementationPatternLeaks.isEmpty do
    throw <| IO.userError <|
      "Surface.AST.Export mathematical theorem-facing cone contains implementation-only names: " ++
        String.intercalate ", " implementationPatternLeaks
  let whitelistFailures := mathematicalTheoremFacingWhitelistFailures env
  unless whitelistFailures.isEmpty do
    throw <| IO.userError <|
      "Surface.AST.Export mathematical theorem-facing whitelist contains invalid entries: " ++
        String.intercalate ", " whitelistFailures

def envExportJson (env : Environment) : String :=
  "{\n" ++
  "  \"schema\": \"surface.lean.env_export.v2\",\n" ++
  "  \"source\": {\"entryModule\": \"Surface\", \"trusted\": true},\n" ++
  "  \"theoremConeAuthorityManifest\": {\n" ++
  "    \"currentMajorGates\": " ++ currentMajorGateManifestJson ++ ",\n" ++
  "    \"currentMajorGateCategories\": " ++ categorizedMajorGateManifestJson ++ ",\n" ++
  "    \"mathematicalTheoremFacingWhitelist\": " ++
      jsonStringArray mathematicalTheoremFacingWhitelistNames ++ ",\n" ++
  "    \"forbiddenAuthorityPolicy\": " ++ jsonStringArray [
        "major theorem gates must not rely on Surface.Legacy dependencies",
        "major theorem gates must not rely on generated fixture authority",
        "major theorem gates must not be axiom/external declarations",
        "readiness dashboards and string labels are metadata, not theorem authority",
        "theorem-facing prismatic sheaf declarations must use actual dependent section data, not descriptor section records"
      ] ++ "\n" ++
  "  },\n" ++
  "  \"declarations\": " ++ surfaceDeclarationsJson env ++ "\n" ++
  "}\n"

end AST

end Surface

def main : IO Unit := do
  initSearchPath (← findSysroot) [".lake/build/lib/lean"]
  let env ← importModules #[{ module := `Surface }] {}
  IO.FS.createDirAll "../fixtures/lean-generated"
  Surface.AST.ensureManifestGatesMatchExportedDeclarations env
  IO.FS.writeFile "../fixtures/lean-generated/lean-env-declarations.json"
    (Surface.AST.envExportJson env)
  IO.println "wrote Lean environment declaration export"
