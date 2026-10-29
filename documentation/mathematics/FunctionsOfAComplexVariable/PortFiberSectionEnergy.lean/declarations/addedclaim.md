# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9998ddff64a7bfe6514db8612845e8fef9c9c18864cfe96b6510cd2e17289822",
  "kind": "def",
  "lexical_name": "AddedClaim",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "addedclaim",
  "source": {
    "blob": "4171bdc03b3e63e95aef73f64c8b70924271d839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 41,
    "path": "GRWTSK/Interfaces/PortFiberSectionEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80647ea8e2cfee43b821ad85dbcb71a24252525c70fc0575916df2031354f3eb",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionsOfAComplexVariable/PortFiberSectionEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9998ddff64a7bfe6514db8612845e8fef9c9c18864cfe96b6510cd2e17289822`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .densityMeasurable =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (hOpen : D.IsOpenCover) (s : BundleSection C hOpen), Measurable (density M hOpen s)
  | .zeroEnergyAE =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s : BundleSection C hOpen),
        energy M μ hOpen s = 0 ↔ ∀ᵐ x ∂μ, s.value x = 0
  | .energyGauge =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (s : BundleSection C hOpen),
        energy (transportMetric G M) μ hOpen (G.bundleSectionEquiv hOpen s) =
          energy M μ hOpen s
  | .finiteEnergyTransport =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        ∃ e : FiniteEnergySection M μ hOpen ≃
            FiniteEnergySection (transportMetric G M) μ hOpen,
          ∀ s, (e s).1 = G.bundleSectionEquiv hOpen s.1
  | .aeGauge =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s t : BundleSection C hOpen),
        AEEqual μ hOpen (G.bundleSectionEquiv hOpen s) (G.bundleSectionEquiv hOpen t) ↔
          AEEqual μ hOpen s t
  | .diracEnergy =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (hOpen : D.IsOpenCover) (s : BundleSection C hOpen) (x : D.X.carrier),
        energy M (Measure.dirac x) hOpen s = density M hOpen s x
  | .infiniteMass =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (μ : Measure D.X.carrier)
        (hOpen : D.IsOpenCover), μ Set.univ = ∞ →
        energy (MetricWeights.identity D) μ hOpen
          (scalarSection D hOpen
            (GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology.constantSection D.X 1)) = ∞
  | .measureDistinction =>
      ∃ (D : IndexedDomainCover Bool) (C : Cocycle D) (M : MetricWeights C)
        (hOpen : D.IsOpenCover) (s : BundleSection C hOpen) (μ ν : Measure D.X.carrier),
        energy M μ hOpen s = 0 ∧ energy M ν hOpen s = 1 ∧ ¬ ∀ x, s.value x = 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionsOfAComplexVariable/PortFiberSectionEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberSectionEnergy.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4171bdc03b3e63e95aef73f64c8b70924271d839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4cc67be550c65e9add58eea455bc7c4604411d6542f6e69dec8c23c41f3b6dc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/PortFiberSectionEnergy.lean","GRWTSK/Interfaces/PortFiberSectionEnergy.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
