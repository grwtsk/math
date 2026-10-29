# Verification target: Point Counting Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcbb07375bf522ebffd4a9a9389307d62d91c9a5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variantc4fffea03303ee3ac4a736e474ce7133bc1f9d1961bb554a067b022fdcfd0fa2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PointCountingNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PointCountingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcbb07375bf522ebffd4a9a9389307d62d91c9a5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variantc4fffea03303ee3ac4a736e474ce7133bc1f9d1961bb554a067b022fdcfd0fa2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variantc4fffea03303ee3ac4a736e474ce7133bc1f9d1961bb554a067b022fdcfd0fa2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.GroupLaw` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GoodReductionCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/PointCountingNamespaced.lean/declarations/goodreductioncertificate.md) | 24 | `declaration-track:481642a940ad918741d0ebaff7920634b852282aacf0f9aab04990424f4219fa` |
| 2 | `structure` | [PointCountData](../../../../../ComputerScience/AlgorithmsInComputerScience/PointCountingNamespaced.lean/declarations/pointcountdata.md) | 33 | `declaration-track:e1697be4d7b2a1555eef7991d878be3fa94d9f78671466d350c2c77b5c666c1b` |
| 3 | `def` | [appendMap](../../../../../ComputerScience/AlgorithmsInComputerScience/PointCountingNamespaced.lean/declarations/appendmap.md) | 42 | `declaration-track:afa16024be0b7f8b133dd789e1c4df8260f27da88e7ac5cf3ef8e12cd7fa7323` |
| 4 | `def` | [affineSolutions](../../../../../ComputerScience/AlgorithmsInComputerScience/PointCountingNamespaced.lean/declarations/affinesolutions.md) | 48 | `declaration-track:846451c9bf83ffdec3fa1ee85258f705401bbaec4d8525a3e4868d28e34f8af8` |
| 5 | `def` | [pointCount](../../../../../ComputerScience/AlgorithmsInComputerScience/PointCountingNamespaced.lean/declarations/pointcount.md) | 62 | `declaration-track:1029e18cdf75d65587ccb97d3283ebe40799418c8e66216d86c150d3991986d5` |
| 6 | `def` | [ap](../../../../../ComputerScience/AlgorithmsInComputerScience/PointCountingNamespaced.lean/declarations/ap.md) | 69 | `declaration-track:1b21720cce9892141aca017d64f02f8652f5cb2fea487768efc0fb0add85a09d` |
| 7 | `theorem` | [pointCount_includes_infinity_once](../../../../../ComputerScience/AlgorithmsInComputerScience/PointCountingNamespaced.lean/declarations/pointcount-includes-infinity-once.md) | 75 | `result-track:f1bd8040273740325fb5eca8326a747aa504e58307ebd714539d3dc52c6c91a9` |
| 8 | `def` | [exampleF2PointCount](../../../../../ComputerScience/AlgorithmsInComputerScience/PointCountingNamespaced.lean/declarations/examplef2pointcount.md) | 84 | `declaration-track:ceb31848bbda2ad4b7aa3c9ded3d2605580ac74947b12479b216aacff3ccd23d` |
| 9 | `def` | [exampleF3PointCount](../../../../../ComputerScience/AlgorithmsInComputerScience/PointCountingNamespaced.lean/declarations/examplef3pointcount.md) | 88 | `declaration-track:50dbf8f69aad489775d4e6c6e79b1625626dbd60c5922573539e308824fc503b` |
| 10 | `def` | [exampleF5PointCount](../../../../../ComputerScience/AlgorithmsInComputerScience/PointCountingNamespaced.lean/declarations/examplef5pointcount.md) | 92 | `declaration-track:f69a6fda88d4273950e064f61f53dde6b8724512db187cdae227f4531389d82a` |
| 11 | `theorem` | [exampleF2PointCount_eq_three](../../../../../ComputerScience/AlgorithmsInComputerScience/PointCountingNamespaced.lean/declarations/examplef2pointcount-eq-three.md) | 95 | `result-track:3458426070033157d3883577953d12d855b5c10a21c09f3e3d05c7d86c456d77` |
| 12 | `theorem` | [exampleF3PointCount_eq_four](../../../../../ComputerScience/AlgorithmsInComputerScience/PointCountingNamespaced.lean/declarations/examplef3pointcount-eq-four.md) | 99 | `result-track:51f803e46c38a1e7841944df1922c1edba4e1f3040232b6d34446b4732f4a2ae` |
| 13 | `theorem` | [exampleF5PointCount_eq_nine](../../../../../ComputerScience/AlgorithmsInComputerScience/PointCountingNamespaced.lean/declarations/examplef5pointcount-eq-nine.md) | 103 | `result-track:6bb602a51f3296f5a5f7fe2858f18b7432b88666fbb49768d6b4af909960d3ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f161d0454a873814b8b5bd9f56ea5213a66639d3db9c8cc780632e084a66826b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variantc4fffea03303ee3ac4a736e474ce7133bc1f9d1961bb554a067b022fdcfd0fa2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointCounting/Variantc4fffea03303ee3ac4a736e474ce7133bc1f9d1961bb554a067b022fdcfd0fa2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
