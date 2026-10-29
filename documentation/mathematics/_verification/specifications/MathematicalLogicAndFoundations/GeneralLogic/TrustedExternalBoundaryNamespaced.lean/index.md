# Verification target: Trusted External Boundary Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71910e652726296de9255938e9521eb498e17bd4",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variant392fcefa4dd4bccdd76d276f3f79af271f8c387b5fa8b427e51d4995efb408f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundaryNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundaryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71910e652726296de9255938e9521eb498e17bd4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variant392fcefa4dd4bccdd76d276f3f79af271f8c387b5fa8b427e51d4995efb408f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variant392fcefa4dd4bccdd76d276f3f79af271f8c387b5fa8b427e51d4995efb408f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Authority.BoundaryCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Authority.ExternalCertificate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TrustedExternalDTT](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundaryNamespaced.lean/declarations/trustedexternaldtt.md) | 55 | `declaration-track:73dc3d2e3197a447038c1a1a38e78f8a877b7c32d5e80c0ccdb53b314b43f38e` |
| 2 | `def` | [CertifiedOrTrusted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundaryNamespaced.lean/declarations/certifiedortrusted.md) | 101 | `declaration-track:062b46f8ad7d10f4aa9bd76404d2e660e7ddba7a1a0011be2f9c26b4022b7295` |
| 3 | `theorem` | [certified_or_trusted_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundaryNamespaced.lean/declarations/certified-or-trusted-sound.md) | 114 | `result-track:3b32172fb52597d9e04f3aa93780006768dbe9d34a503ce8ec09e313390e53b0` |
| 4 | `theorem` | [trusted_external_boundary_calculus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundaryNamespaced.lean/declarations/trusted-external-boundary-calculus.md) | 133 | `result-track:a792d2ab08fc8006ea8ce6d170a75c9b590e6b7dfeac0b8adab2bc4c4b0873cb` |
| 5 | `theorem` | [no_direct_trusted_external_crossing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundaryNamespaced.lean/declarations/no-direct-trusted-external-crossing.md) | 144 | `result-track:7ac26b73ce290dce185d7d057d17bf4cc9db97794f2c9b8ec21a49b95ad28c29` |
| 6 | `theorem` | [extended_ownership_reduces_to_internal_without_trusted_external](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundaryNamespaced.lean/declarations/extended-ownership-reduces-to-internal-without-trusted-external.md) | 159 | `result-track:502c48f8d068ea83ade935eb8ba193f9780ed0d8980767f40596f69971957d6e` |
| 7 | `theorem` | [extended_soundness_reduces_to_internal_without_trusted_external](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundaryNamespaced.lean/declarations/extended-soundness-reduces-to-internal-without-trusted-external.md) | 180 | `result-track:dd91bbe0c131e406a7d40d4fb648e34d99b8a814d657240f6cb3f7883a934768` |
| 8 | `def` | [OwnsExtPred](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundaryNamespaced.lean/declarations/ownsextpred.md) | 204 | `declaration-track:f20eae161e6a5b0998934b3fdd6f8741360b92756febbbab054e3fe5a8baa4b5` |
| 9 | `def` | [CertifiedOrTrustedPred](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundaryNamespaced.lean/declarations/certifiedortrustedpred.md) | 210 | `declaration-track:57cc560d41937eb57ae9004ae45a6d5323802f810a0574fa9c649e3d9a7644c6` |
| 10 | `def` | [DirectExtPred](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundaryNamespaced.lean/declarations/directextpred.md) | 216 | `declaration-track:537ccae2da0e9b4876dfc7e617ceb9f736c06d4be9234a0a6094a373f30e033f` |
| 11 | `theorem` | [ownsExt_le_certifiedOrTrusted_categorical](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundaryNamespaced.lean/declarations/ownsext-le-certifiedortrusted-categorical.md) | 222 | `result-track:096f6e358f4f4b0a379afbba5599cc25810e88b4e35d6e129b95e83a73358823` |
| 12 | `theorem` | [certifiedOrTrusted_le_holds_categorical](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundaryNamespaced.lean/declarations/certifiedortrusted-le-holds-categorical.md) | 237 | `result-track:05a41e8127f21601f8ddebbe53f5152f2c55197c4c4e2735288ddb1047ebea48` |
| 13 | `theorem` | [trusted_external_owns_le_holds_by_categorical_logic](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundaryNamespaced.lean/declarations/trusted-external-owns-le-holds-by-categorical-logic.md) | 258 | `result-track:9a243ba90dfc1849276b4df5e150124f1884886d9c10c2b16a7570a117da34cd` |
| 14 | `theorem` | [no_direct_trusted_external_crossing_as_empty_subobject](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TrustedExternalBoundaryNamespaced.lean/declarations/no-direct-trusted-external-crossing-as-empty-subobject.md) | 271 | `result-track:4c568b950bb80e8a43e18dfd492df95d8339ee92558c3fbddbecbcc9ed9ad166` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eed0378dd807e71812eaec7404de2c77813e8f1a540f54ddb8d9fafbe979e3a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variant392fcefa4dd4bccdd76d276f3f79af271f8c387b5fa8b427e51d4995efb408f3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variant392fcefa4dd4bccdd76d276f3f79af271f8c387b5fa8b427e51d4995efb408f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
