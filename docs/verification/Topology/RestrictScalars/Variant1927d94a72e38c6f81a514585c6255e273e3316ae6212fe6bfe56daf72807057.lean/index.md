# Verification target: GRWTSK.Topology.RestrictScalars.Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cb23fefb2dfa1b80766c0b26faedd8f2260b906",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/RestrictScalars/Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/RestrictScalars/Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057.lean/index.md) · [Full source](../../../../mathematics/Topology/RestrictScalars/Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cb23fefb2dfa1b80766c0b26faedd8f2260b906`.

Source path: `GRWTSK/Topology/RestrictScalars/Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/RestrictScalars/Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057.lean.json)

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
| 1 | `def` | [restrictScalars](../../../../mathematics/Topology/RestrictScalars/Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057.lean/declarations/restrictscalars--ccd6bde447dcc33ca572810e.md) | 43 | `declaration-track:ccd6bde447dcc33ca572810e3adfd175c9dde26347366816faa18d7782d83dd8` |
| 2 | `theorem` | [coe_restrictScalars](../../../../mathematics/Topology/RestrictScalars/Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057.lean/declarations/coe-restrictscalars--ccf15ad49936283436225fbc.md) | 47 | `result-track:ccf15ad49936283436225fbca786fb6866370879fa4809ec77f413f6df7aaf4c` |
| 3 | `theorem` | [coe_restrictScalars'](../../../../mathematics/Topology/RestrictScalars/Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057.lean/declarations/coe-restrictscalars--09750d6dc036e787da5b1f44.md) | 51 | `result-track:09750d6dc036e787da5b1f444225de700a5855e89c542a3d427a6efa4b54d5a7` |
| 4 | `theorem` | [toContinuousAddMonoidHom_restrictScalars](../../../../mathematics/Topology/RestrictScalars/Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057.lean/declarations/tocontinuousaddmonoidhom-restrictscalars--ead592b338cc0725d5de49e8.md) | 54 | `result-track:ead592b338cc0725d5de49e8592380d082c7e22dbe970b4aba58004bfe771f42` |
| 5 | `lemma` | [restrictScalars_zero](../../../../mathematics/Topology/RestrictScalars/Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057.lean/declarations/restrictscalars-zero--274d9cdecb0e815b1348cfd7.md) | 57 | `result-track:274d9cdecb0e815b1348cfd7bcb1926c75d6480c7cffd604433d6b54b8a12cfe` |
| 6 | `lemma` | [restrictScalars_add](../../../../mathematics/Topology/RestrictScalars/Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057.lean/declarations/restrictscalars-add--82b6f394e3fa9e2bdd4b82d0.md) | 60 | `result-track:82b6f394e3fa9e2bdd4b82d08ed42e731275e4fac03fe87d0c3ae59544a9bb9e` |
| 7 | `theorem` | [restrictScalars_smul](../../../../mathematics/Topology/RestrictScalars/Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057.lean/declarations/restrictscalars-smul--0ab00cbccc2e3f1ae4d2a242.md) | 66 | `result-track:0ab00cbccc2e3f1ae4d2a2425c7f0a3b75d907bfe05039ee30ee81db90878be0` |
| 8 | `def` | [restrictScalarsₗ](../../../../mathematics/Topology/RestrictScalars/Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057.lean/declarations/restrictscalars--9a3946f5fba198a8417f1cef.md) | 75 | `declaration-track:9a3946f5fba198a8417f1cefbfd154ff909e015dacbcd1551f0fc74fcb0e93ac` |
| 9 | `theorem` | [coe_restrictScalarsₗ](../../../../mathematics/Topology/RestrictScalars/Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057.lean/declarations/coe-restrictscalars--85c5095587c77a83d214dc10.md) | 81 | `result-track:85c5095587c77a83d214dc10b683b3b47f8ce30efa38492a6d67e584279eab7e` |
| 10 | `lemma` | [restrictScalars_sub](../../../../mathematics/Topology/RestrictScalars/Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057.lean/declarations/restrictscalars-sub--1ecce3db19c6bb326b57f07b.md) | 92 | `result-track:1ecce3db19c6bb326b57f07b72b052bf937e85575124ebf004c00c4111ba0de0` |
| 11 | `lemma` | [restrictScalars_neg](../../../../mathematics/Topology/RestrictScalars/Variant1927d94a72e38c6f81a514585c6255e273e3316ae6212fe6bfe56daf72807057.lean/declarations/restrictscalars-neg--fa6030cec625ae455447a052.md) | 96 | `result-track:fa6030cec625ae455447a0520586d80365f3fecc17ab1c16837356e05adaafce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
