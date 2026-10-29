# Verification target: Active Region Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33183e42b0376ba2668725f376669af4ecef4373",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/ActiveRegion/Variant1cae83f9f29b51ce5f1b9ac70a9c7087d0e786ce60fc916bd2072ea5b40e78e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/ActiveRegionNamespaced.lean/index.md) · [Full source](../../../../Geometry/ActiveRegionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33183e42b0376ba2668725f376669af4ecef4373`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/ActiveRegion/Variant1cae83f9f29b51ce5f1b9ac70a9c7087d0e786ce60fc916bd2072ea5b40e78e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/ActiveRegion/Variant1cae83f9f29b51ce5f1b9ac70a9c7087d0e786ce60fc916bd2072ea5b40e78e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.Registry` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ActiveModelRegion](../../../../Geometry/ActiveRegionNamespaced.lean/declarations/activemodelregion.md) | 23 | `declaration-track:a79ed9dff87569cf832c2ea9908ef423fa001d81c6c7e81f44858a4f23337f2a` |
| 2 | `def` | [ofDependencyClosure](../../../../Geometry/ActiveRegionNamespaced.lean/declarations/ofdependencyclosure.md) | 43 | `declaration-track:b6ef4ba5b64851b31ca01b1ca39c4f37c0d572407be7ccccb92c4896f1294ecc` |
| 3 | `theorem` | [selectedVersion_unique](../../../../Geometry/ActiveRegionNamespaced.lean/declarations/selectedversion-unique.md) | 73 | `result-track:8156f5fe9f064c12113d5740da3e6a37611561a58cbcb7d6db002c59c6577f7a` |
| 4 | `theorem` | [finite](../../../../Geometry/ActiveRegionNamespaced.lean/declarations/finite.md) | 85 | `result-track:2cea1ec69335bfd0ab97f6f7775934c86984ffe17efd2834310a717459103af4` |
| 5 | `theorem` | [activeClosure_is_least_dependencyClosedRegion](../../../../Geometry/ActiveRegionNamespaced.lean/declarations/activeclosure-is-least-dependencyclosedregion.md) | 94 | `result-track:bb5b23426b69500117d63767c1ab8c8a016a18b4461a47b42b3360faae81d65a` |
| 6 | `structure` | [Certificate](../../../../Geometry/ActiveRegionNamespaced.lean/declarations/certificate.md) | 128 | `declaration-track:ea820b930780a7117858705f4a3c9d995ec59a2d23f048ffe64e0cd2b2d6c3e6` |
| 7 | `def` | [Certificate.Accepted](../../../../Geometry/ActiveRegionNamespaced.lean/declarations/certificate-accepted.md) | 134 | `declaration-track:57152e15d8cef2d32ef50835f89eba2ff06c046692d5fe4a6778becd08869ae5` |
| 8 | `theorem` | [Certificate.rejected_of_stale](../../../../Geometry/ActiveRegionNamespaced.lean/declarations/certificate-rejected-of-stale.md) | 141 | `result-track:1c166a4faef19068f43b6309e2001eee61e79e34dd3eced68e6c8bce7400cee6` |
| 9 | `structure` | [VersionSensitiveAttention](../../../../Geometry/ActiveRegionNamespaced.lean/declarations/versionsensitiveattention.md) | 153 | `declaration-track:cb57c22afeb5212c420e01ea1ab7afef767bda358413d7fc79b9b00aa4883d57` |
| 10 | `theorem` | [attention_changes_of_selectedVersion_change](../../../../Geometry/ActiveRegionNamespaced.lean/declarations/attention-changes-of-selectedversion-change.md) | 165 | `result-track:0f0673768f8b27fe4ddf534481f9a838d60bab5d0a81d9a2de4c01e893cf2615` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26fdc8895402dc675cca57bcc556f30ca17fb05ace1bdcde6f9d0bfcbac058e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/ActiveRegion/Variant1cae83f9f29b51ce5f1b9ac70a9c7087d0e786ce60fc916bd2072ea5b40e78e3.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/ActiveRegion/Variant1cae83f9f29b51ce5f1b9ac70a9c7087d0e786ce60fc916bd2072ea5b40e78e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
