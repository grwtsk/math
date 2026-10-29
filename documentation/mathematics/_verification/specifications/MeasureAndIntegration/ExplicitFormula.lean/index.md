# Verification target: Explicit Formula

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "753bc765e763ed45428d1f6152c33f98c08de1ba",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExplicitFormula/Variantd100377bfd2646bd7fb20fcb2a482456eeccd09e4d34aec8546a1e6b429c321e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ExplicitFormula.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ExplicitFormula.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `753bc765e763ed45428d1f6152c33f98c08de1ba`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExplicitFormula/Variantd100377bfd2646bd7fb20fcb2a482456eeccd09e4d34aec8546a1e6b429c321e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExplicitFormula/Variantd100377bfd2646bd7fb20fcb2a482456eeccd09e4d34aec8546a1e6b429c321e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Seam` — import line 37; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.Main` — import line 38; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.Effective` — import line 39; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [xi_eq_weilXi](../../../../MeasureAndIntegration/ExplicitFormula.lean/declarations/xi-eq-weilxi.md) | 54 | `result-track:3ec601b3f501d25a64d65035a91b4eb26b4c6db845d5a1fbe050529688a3d61f` |
| 2 | `def` | [kfun](../../../../MeasureAndIntegration/ExplicitFormula.lean/declarations/kfun.md) | 143 | `declaration-track:a0b0931d1241d1c364d3f33ed1ad17271a3def9b029870bc27b7dd9cae2a57fc` |
| 3 | `structure` | [FamilyHyps](../../../../MeasureAndIntegration/ExplicitFormula.lean/declarations/familyhyps.md) | 146 | `declaration-track:ed0eeafb043f5ac696e7f5da4f6b43b5bffa50d9d5ab87d1d62f3979488e4c48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=edf3124070e78aa0869b562ee14b207b0630618b83d2956d99383148c09043d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExplicitFormula/Variantd100377bfd2646bd7fb20fcb2a482456eeccd09e4d34aec8546a1e6b429c321e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExplicitFormula/Variantd100377bfd2646bd7fb20fcb2a482456eeccd09e4d34aec8546a1e6b429c321e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
