# Verification target: Data Finset Sigma

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "174016def3b66a76937b0d8a0f714b2f05942ed0",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Varianta52a5534a768755b08d684c15dfcc0d87900e0ba4e6ab31addaaaecd67634e4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `174016def3b66a76937b0d8a0f714b2f05942ed0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Varianta52a5534a768755b08d684c15dfcc0d87900e0ba4e6ab31addaaaecd67634e4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sigma/Varianta52a5534a768755b08d684c15dfcc0d87900e0ba4e6ab31addaaaecd67634e4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Sigma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Finset` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sigma](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/sigma.md) | 41 | `declaration-track:b30ab89f098a767f2b27f6d108612b01133101df56e09e5368f333eabb5b4406` |
| 2 | `theorem` | [mem_sigma](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/mem-sigma.md) | 47 | `result-track:e2349e8d5040e2a92a000e39ea4734196b1863861d3c7998262e22d8f39c63f4` |
| 3 | `theorem` | [coe_sigma](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/coe-sigma.md) | 51 | `result-track:8cc14c4eadd82d4b78c0b090780e0999d8cd77a5ef8557f353631d3b7d4d4695` |
| 4 | `theorem` | [sigma_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/sigma-nonempty.md) | 56 | `result-track:408a78d3864ac4e14822514a5f05887d9b20361c6369a929d31e48f9f92182c4` |
| 5 | `theorem` | [sigma_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/sigma-eq-empty.md) | 62 | `result-track:27e1c2de14488d6980fa3774c38f4d242eb5668cc2834d6b466f21f06b40f40f` |
| 6 | `theorem` | [sigma_mono](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/sigma-mono.md) | 66 | `result-track:3656de77afe47bdaed91bfbda96a7ea584c498ddc03c3a04e5abd7ab44ab8467` |
| 7 | `theorem` | [pairwiseDisjoint_map_sigmaMk](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/pairwisedisjoint-map-sigmamk.md) | 71 | `result-track:72a60b7e3a27f552ec56d38533f2a42658872ec1274ffe87d3208d213cdcdeca` |
| 8 | `theorem` | [disjiUnion_map_sigma_mk](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/disjiunion-map-sigma-mk.md) | 80 | `result-track:175555f411abb88c4bdf15685a7f90b7546eb2369c86ddeb045d2c7488d28516` |
| 9 | `theorem` | [sigma_eq_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/sigma-eq-biunion.md) | 85 | `result-track:f7875cebe98ee151ef07a49709b2fa50e29854ad338c0f742591cc371640a1ad` |
| 10 | `theorem` | [sup_sigma](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/sup-sigma.md) | 92 | `result-track:1ea0796bf3cf69ae297241aff0bb673988ffda2fa0651c4edc312771409bccf6` |
| 11 | `theorem` | [inf_sigma](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/inf-sigma.md) | 99 | `result-track:bd65c19980f18aef3e23bddd00caf531ac8237195a96b66275ff96d4eccfc3ad` |
| 12 | `theorem` | [_root_.biSup_finsetSigma](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/root-bisup-finsetsigma.md) | 103 | `result-track:4cb9e2aab05ed3b8b4dfce421ef048ee0089815c55ff9647bd163f440e13774d` |
| 13 | `theorem` | [_root_.biSup_finsetSigma'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/root-bisup-finsetsigma-source-edition-2.md) | 107 | `result-track:7a849657e87f96d68358ae61fdcef8fb37bd17fa03fae31bb10cd10f54df8e99` |
| 14 | `theorem` | [_root_.biInf_finsetSigma](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/root-biinf-finsetsigma-source-edition-2.md) | 111 | `result-track:d3d346ac58effbaf33b180fcda7bc5844fd7691a596e39d9252537f4c2f71479` |
| 15 | `theorem` | [_root_.biInf_finsetSigma'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/root-biinf-finsetsigma.md) | 115 | `result-track:ca2f7267fe979310c1cf82bb39db3c8945b8ed6e440c4cab2bfa769f00646bc7` |
| 16 | `theorem` | [_root_.Set.biUnion_finsetSigma](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/root-set-biunion-finsetsigma.md) | 119 | `result-track:20df3c53c1713c69b32711759fbc99ea8d8312e5bc62889388b95e954c8180e0` |
| 17 | `theorem` | [_root_.Set.biUnion_finsetSigma'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/root-set-biunion-finsetsigma-source-edition-2.md) | 123 | `result-track:73ecce2b178dbf3828f5b7b15b7e4f1f8d829de0cff323a3a2358a5621b04b01` |
| 18 | `theorem` | [_root_.Set.biInter_finsetSigma](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/root-set-biinter-finsetsigma.md) | 127 | `result-track:1fd6a4a447cd711a238b9555e5b41fb833c31091eae6eb61f71ceae69bb920a8` |
| 19 | `theorem` | [_root_.Set.biInter_finsetSigma'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/root-set-biinter-finsetsigma-source-edition-2.md) | 131 | `result-track:4696f2251c17b8c6351848c1625705b67e76a869814036e0eac50760637d769b` |
| 20 | `def` | [sigmaLift](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/sigmalift.md) | 142 | `declaration-track:44b03efddab3bc96a4928ab9994de577f00d6e8a282a58ffd6b6e58b8c92c5cc` |
| 21 | `theorem` | [mem_sigmaLift](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/mem-sigmalift.md) | 146 | `result-track:d1e0be61f4f4818210ee690f8a00d71d2383dabba437978ed7a0743296bb9419` |
| 22 | `theorem` | [mk_mem_sigmaLift](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/mk-mem-sigmalift.md) | 165 | `result-track:2537febef2d3fc3ec4ed6c98a22079e0ef691c841442c28ab191b86cefb5cd93` |
| 23 | `theorem` | [notMem_sigmaLift_of_ne_left](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/notmem-sigmalift-of-ne-left.md) | 172 | `result-track:6af9a928345c267e011e80ba432d707a292dd442148be336ad3f6b69766f8e9a` |
| 24 | `theorem` | [notMem_sigmaLift_of_ne_right](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/notmem-sigmalift-of-ne-right.md) | 180 | `result-track:a9a4ae33b4233715016620f82b2393d79071bd9889d61e19d0a2ec300f09b179` |
| 25 | `theorem` | [sigmaLift_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/sigmalift-nonempty.md) | 190 | `result-track:09e6dba84080976223f9f285c2a30ea28e09b2146373fe6365644b3348fd4bec` |
| 26 | `theorem` | [sigmaLift_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/sigmalift-eq-empty.md) | 195 | `result-track:18f1003a8c6f5624a4d38e111da794fd9c1331f595723e0a6c74b804622c9dfd` |
| 27 | `theorem` | [sigmaLift_mono](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/sigmalift-mono.md) | 201 | `result-track:09354fd1a45aebbab1ff04823e7cea5192c35ba7242cf35a9d814e58194ea248` |
| 28 | `theorem` | [card_sigmaLift](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/declarations/card-sigmalift.md) | 211 | `result-track:e9abc8437f44fbd1b136612d4ff1a63a21ef21b623d536bf1122bf0921021ba5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9f2c7b0cc5af129efea3aefc4baf70c9d3590a8990a1a2724276d907100f7cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Varianta52a5534a768755b08d684c15dfcc0d87900e0ba4e6ab31addaaaecd67634e4b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sigma/Varianta52a5534a768755b08d684c15dfcc0d87900e0ba4e6ab31addaaaecd67634e4b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
