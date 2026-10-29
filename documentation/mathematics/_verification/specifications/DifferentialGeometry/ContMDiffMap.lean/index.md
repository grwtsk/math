# Verification target: Cont MDiff Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5e198199f02fde5b8dd6c021cafba24b9ec4ba4",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variantbd92e7cb2fa61ef3ce5ad517fd8624c1bc4107646bf21f3086bb1a7cfabca9c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/ContMDiffMap.lean/index.md) · [Full source](../../../../DifferentialGeometry/ContMDiffMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5e198199f02fde5b8dd6c021cafba24b9ec4ba4`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variantbd92e7cb2fa61ef3ce5ad517fd8624c1bc4107646bf21f3086bb1a7cfabca9c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/ContMDiffMap/Variantbd92e7cb2fa61ef3ce5ad517fd8624c1bc4107646bf21f3086bb1a7cfabca9c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff.NormedSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContMDiffMap](../../../../DifferentialGeometry/ContMDiffMap.lean/declarations/contmdiffmap.md) | 31 | `declaration-track:c063679798d1a45d849f34fd0ef7968879e18707e7645b6e52894ec62708afaf` |
| 2 | `instance` | [instFunLike](../../../../DifferentialGeometry/ContMDiffMap.lean/declarations/instfunlike.md) | 49 | `declaration-track:b011a1dfaa1052e3799fca325a4c1ee04c53150c714a3274c8a800f71f8f68b1` |
| 3 | `theorem` | [contMDiff](../../../../DifferentialGeometry/ContMDiffMap.lean/declarations/contmdiff.md) | 53 | `result-track:33410b5f3a4ce6435908f56e7bcdd79dbca3c789c0bbcd4907838142fc6ddd2b` |
| 4 | `theorem` | [coeFn_mk](../../../../DifferentialGeometry/ContMDiffMap.lean/declarations/coefn-mk.md) | 67 | `result-track:33c53d5449098aff83391bf5d9482f6976a71bb44dfc678ecea23eb8156d2e66` |
| 5 | `theorem` | [coe_injective](../../../../DifferentialGeometry/ContMDiffMap.lean/declarations/coe-injective.md) | 71 | `result-track:82476dc80f9e41a79ce88a6bccfb9d898b3f6eeb211d8947f0ff881028ea610c` |
| 6 | `theorem` | [ext](../../../../DifferentialGeometry/ContMDiffMap.lean/declarations/ext.md) | 75 | `result-track:abb205fb4a124ff3923d69f7cbb498c02718f783cc0a383eb1fa733c764f802a` |
| 7 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ContMDiffMap.lean/declarations/instance-source-edition-2.md) | 77 | `declaration-track:a14498ba258498eb2a96e1b3bb42db16a08bbebb06513e12f9069ae58ba73af8` |
| 8 | `def` | [id](../../../../DifferentialGeometry/ContMDiffMap.lean/declarations/id.md) | 81 | `declaration-track:a5bea2d7117b637c7052e0a54d9a4fc232288f6d0c96e62a4a9b451717119aa9` |
| 9 | `def` | [comp](../../../../DifferentialGeometry/ContMDiffMap.lean/declarations/comp.md) | 85 | `declaration-track:7a881bcbabb0fa3e13091c747fa16768a31610decdbdada822a9fedf813f9da8` |
| 10 | `theorem` | [comp_apply](../../../../DifferentialGeometry/ContMDiffMap.lean/declarations/comp-apply.md) | 90 | `result-track:99c6018e2de3983c5e912abeb9268e36af1f07949e43f3547cefb4557f8bd82a` |
| 11 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ContMDiffMap.lean/declarations/instance.md) | 94 | `declaration-track:07ca66d38d40d5e162e1262b5a68f4972b604d01f1f4a47bc2547c8baf5eeee1` |
| 12 | `def` | [const](../../../../DifferentialGeometry/ContMDiffMap.lean/declarations/const.md) | 98 | `declaration-track:9484f62b1044984c7a869ccc562cf28d647bef3367fafd1211da3c5ef49b4398` |
| 13 | `def` | [fst](../../../../DifferentialGeometry/ContMDiffMap.lean/declarations/fst.md) | 102 | `declaration-track:f34c79fb2edeab1878d82c65529836e429be6811fb7952c396228cc274b86fe4` |
| 14 | `def` | [snd](../../../../DifferentialGeometry/ContMDiffMap.lean/declarations/snd.md) | 106 | `declaration-track:113117af15d6e8def0d619f981df61873ffe28b484a50bb9fc0060c4f52e0ca2` |
| 15 | `def` | [prodMk](../../../../DifferentialGeometry/ContMDiffMap.lean/declarations/prodmk.md) | 110 | `declaration-track:d0548b3299a6214c96f9033838e2f9a6b7a34d7bb3106d3a9d122fc1bdc39822` |
| 16 | `instance` | [ContinuousLinearMap.hasCoeToContMDiffMap](../../../../DifferentialGeometry/ContMDiffMap.lean/declarations/continuouslinearmap-hascoetocontmdiffmap.md) | 115 | `declaration-track:81b028873202c0789f8fc191cebe3115d015e08c4be319586860556b683417f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a10fef25c016b05388ae188d8879b06146190fb9f4b429693bfb4b96ff9da98c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/ContMDiffMap/Variantbd92e7cb2fa61ef3ce5ad517fd8624c1bc4107646bf21f3086bb1a7cfabca9c3.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/ContMDiffMap/Variantbd92e7cb2fa61ef3ce5ad517fd8624c1bc4107646bf21f3086bb1a7cfabca9c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
