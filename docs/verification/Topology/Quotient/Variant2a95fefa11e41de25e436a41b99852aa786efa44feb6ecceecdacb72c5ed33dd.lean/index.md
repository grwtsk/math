# Verification target: GRWTSK.Topology.Quotient.Variant2a95fefa11e41de25e436a41b99852aa786efa44feb6ecceecdacb72c5ed33dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3678796c34e92f475704dbf4c39803ce5d2d0bc3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Quotient/Variant2a95fefa11e41de25e436a41b99852aa786efa44feb6ecceecdacb72c5ed33dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Quotient/Variant2a95fefa11e41de25e436a41b99852aa786efa44feb6ecceecdacb72c5ed33dd.lean/index.md) · [Full source](../../../../mathematics/Topology/Quotient/Variant2a95fefa11e41de25e436a41b99852aa786efa44feb6ecceecdacb72c5ed33dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3678796c34e92f475704dbf4c39803ce5d2d0bc3`.

Source path: `GRWTSK/Topology/Quotient/Variant2a95fefa11e41de25e436a41b99852aa786efa44feb6ecceecdacb72c5ed33dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Quotient/Variant2a95fefa11e41de25e436a41b99852aa786efa44feb6ecceecdacb72c5ed33dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkQL](../../../../mathematics/Topology/Quotient/Variant2a95fefa11e41de25e436a41b99852aa786efa44feb6ecceecdacb72c5ed33dd.lean/declarations/mkql--a458c9088110245b1344150b.md) | 53 | `declaration-track:a458c9088110245b1344150b22be600f470566eec459c89d9e930253c74d51c8` |
| 2 | `theorem` | [toLinearMap_mkQL](../../../../mathematics/Topology/Quotient/Variant2a95fefa11e41de25e436a41b99852aa786efa44feb6ecceecdacb72c5ed33dd.lean/declarations/tolinearmap-mkql--4794e617df9b3324472da43d.md) | 58 | `result-track:4794e617df9b3324472da43dfe0d73d99075d0e472ea60aa73d1ff0ecf297cc4` |
| 3 | `theorem` | [coe_mkQL](../../../../mathematics/Topology/Quotient/Variant2a95fefa11e41de25e436a41b99852aa786efa44feb6ecceecdacb72c5ed33dd.lean/declarations/coe-mkql--67ca9932229ab3b6365d9c94.md) | 61 | `result-track:67ca9932229ab3b6365d9c94498ef41a333dfa34bd2f2235445b89844a49f7f9` |
| 4 | `theorem` | [mkQL_apply](../../../../mathematics/Topology/Quotient/Variant2a95fefa11e41de25e436a41b99852aa786efa44feb6ecceecdacb72c5ed33dd.lean/declarations/mkql-apply--bbce3fdefd7780daa54a6625.md) | 63 | `result-track:bbce3fdefd7780daa54a6625a3c74046f236c8479073870fe85c334f8130320c` |
| 5 | `theorem` | [isQuotientMap_mkQL](../../../../mathematics/Topology/Quotient/Variant2a95fefa11e41de25e436a41b99852aa786efa44feb6ecceecdacb72c5ed33dd.lean/declarations/isquotientmap-mkql--04ca92752750c7a8a954d85a.md) | 65 | `result-track:04ca92752750c7a8a954d85a214e7cbb10825df97a21899d93128c15abc076de` |
| 6 | `theorem` | [isOpenQuotientMap_mkQL](../../../../mathematics/Topology/Quotient/Variant2a95fefa11e41de25e436a41b99852aa786efa44feb6ecceecdacb72c5ed33dd.lean/declarations/isopenquotientmap-mkql--625bbffa07417246cf81a1c0.md) | 67 | `result-track:625bbffa07417246cf81a1c03632f17461649f719e35c1fff3cc3c147b697aec` |
| 7 | `def` | [liftQL](../../../../mathematics/Topology/Quotient/Variant2a95fefa11e41de25e436a41b99852aa786efa44feb6ecceecdacb72c5ed33dd.lean/declarations/liftql--11dc50e1160397dcd9eaefc0.md) | 71 | `declaration-track:11dc50e1160397dcd9eaefc03da739c8bb4c4d12027c0e8a281c6bedb5f8e741` |
| 8 | `theorem` | [toLinearMap_liftQL](../../../../mathematics/Topology/Quotient/Variant2a95fefa11e41de25e436a41b99852aa786efa44feb6ecceecdacb72c5ed33dd.lean/declarations/tolinearmap-liftql--91b10f0329c1cd037a2551bb.md) | 76 | `result-track:91b10f0329c1cd037a2551bbe0ecf60aec235bf8335f028a4317ab0596642fb5` |
| 9 | `theorem` | [coe_liftQL](../../../../mathematics/Topology/Quotient/Variant2a95fefa11e41de25e436a41b99852aa786efa44feb6ecceecdacb72c5ed33dd.lean/declarations/coe-liftql--082bc7ad53571fd5e45fe51f.md) | 80 | `result-track:082bc7ad53571fd5e45fe51f7c9ebc9d1f1a37e90e2e985b74e0d5bc8b5614c1` |
| 10 | `theorem` | [liftQL_apply](../../../../mathematics/Topology/Quotient/Variant2a95fefa11e41de25e436a41b99852aa786efa44feb6ecceecdacb72c5ed33dd.lean/declarations/liftql-apply--28fd43144b121baa0dcc3108.md) | 84 | `result-track:28fd43144b121baa0dcc310893ed136ae7b5f8fabe3801f47d0418d9fb78e602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
