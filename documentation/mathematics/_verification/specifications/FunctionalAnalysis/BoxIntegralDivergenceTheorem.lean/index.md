# Verification target: Box Integral Divergence Theorem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7da80150ebe73f1f7579babc3bc6b20529e526b5",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant711ff0e66774dfd322468ead3ae65b56f6272d6ebfe9d5787cac70f748f83785.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/BoxIntegralDivergenceTheorem.lean/index.md) · [Full source](../../../../FunctionalAnalysis/BoxIntegralDivergenceTheorem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7da80150ebe73f1f7579babc3bc6b20529e526b5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant711ff0e66774dfd322468ead3ae65b56f6272d6ebfe9d5787cac70f748f83785.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant711ff0e66774dfd322468ead3ae65b56f6272d6ebfe9d5787cac70f748f83785.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Partition.Additive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_volume_sub_integral_face_upper_sub_lower_smul_le](../../../../FunctionalAnalysis/BoxIntegralDivergenceTheorem.lean/declarations/norm-volume-sub-integral-face-upper-sub-lower-smul-le.md) | 62 | `result-track:231bcd60810196a78cfd23482e9c937103c12a794f175eca62e782572a90697e` |
| 2 | `theorem` | [hasIntegral_GP_pderiv](../../../../FunctionalAnalysis/BoxIntegralDivergenceTheorem.lean/declarations/hasintegral-gp-pderiv.md) | 146 | `result-track:e427f91f1b90d5baf54edf25b5c3f2d7da70a504af551422d6bb2facf773719f` |
| 3 | `theorem` | [hasIntegral_GP_divergence_of_forall_hasDerivWithinAt](../../../../FunctionalAnalysis/BoxIntegralDivergenceTheorem.lean/declarations/hasintegral-gp-divergence-of-forall-hasderivwithinat.md) | 258 | `result-track:c73d207ebe6e3f2917ba69138a430b3075eea4bd04c64804e62849abe1ce7d5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d3371d359e67040db2757767852abb6402ad7650ecf46164f7965c23b60e076 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant711ff0e66774dfd322468ead3ae65b56f6272d6ebfe9d5787cac70f748f83785.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant711ff0e66774dfd322468ead3ae65b56f6272d6ebfe9d5787cac70f748f83785.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
