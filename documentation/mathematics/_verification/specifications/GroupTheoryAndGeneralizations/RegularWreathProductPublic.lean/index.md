# Verification target: Regular Wreath Product Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f8e2905bb716db4982dca5d7a59f0f4ab8053fa",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/RegularWreathProduct/Variant6b7f087f8a431b04bf76d526ff766e53923573fa7a31f6684a93c40435354d48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f8e2905bb716db4982dca5d7a59f0f4ab8053fa`.

Source path: `GRWTSK/Algebra/GroupTheory/RegularWreathProduct/Variant6b7f087f8a431b04bf76d526ff766e53923573fa7a31f6684a93c40435354d48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/RegularWreathProduct/Variant6b7f087f8a431b04bf76d526ff766e53923573fa7a31f6684a93c40435354d48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RegularWreathProduct](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/regularwreathproduct.md) | 45 | `declaration-track:b14974898fd134987b98e2770927da2fdbf3075c1e3ccce3aadd4e2844bbfd91` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/instance-source-edition-3.md) | 56 | `declaration-track:11521c71f4193a9733946b3abac4a7ae73b0b4e8662226bf3000fe25d1f1e333` |
| 3 | `lemma` | [mul_def](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/mul-def.md) | 59 | `result-track:685c2c278970b5857ba3e07dae5d78ae8b8a1bc26c4d6e14b863a9ac8ffb0547` |
| 4 | `theorem` | [mul_left](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/mul-left.md) | 62 | `result-track:d7be34b75783c0ad3d0f317b59ff95c9e2e797601b64d44b4e66ab9e80d22afd` |
| 5 | `theorem` | [mul_right](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/mul-right.md) | 65 | `result-track:69e011dc0ecbeb1cb5961bbccda4d5601c811c07debf734156ecf0af05394255` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/instance-source-edition-2.md) | 67 | `declaration-track:10e67d89df18a8c27ea84820670cb4c16b4178261530b508fbd7efb525d5a6d7` |
| 7 | `theorem` | [one_left](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/one-left.md) | 70 | `result-track:e0aaa99be08c65d59a426d94c3954f58442ea7f94a32d66f02e0e1ad3e6a2cdd` |
| 8 | `theorem` | [one_right](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/one-right.md) | 73 | `result-track:c38da39fbb946431ce3dcae05f2180cdd8faf17d27a7166d1c4410e022b6e603` |
| 9 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/instance-source-edition-7.md) | 75 | `declaration-track:90005927ceef496348158acd6d0fb9da1c6dbba085f6a4767fe217eaeb6bbd51` |
| 10 | `theorem` | [inv_left](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/inv-left.md) | 79 | `result-track:22baa071430789de76fe6b9b8429851781de7fed049ba5daf40e474e1e181f4f` |
| 11 | `theorem` | [inv_right](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/inv-right.md) | 82 | `result-track:84b6db3fa60ea678a840ca91ec4c86fb66351924cc7060051ce9d6939e12b06c` |
| 12 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/instance-source-edition-6.md) | 84 | `declaration-track:6349cb8ae387370c09c390928da72e811b2f47b7880d8077b1b6ebecd2eb831d` |
| 13 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/instance-source-edition-8.md) | 90 | `declaration-track:91a4cf2630af0c230444f53a428ca744a861a0e1df9baf3a9ec574f09f4e7b69` |
| 14 | `def` | [rightHom](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/righthom.md) | 93 | `declaration-track:e7d8e5b5d8829f8bc37038a897ba0a741b7c9a6cdc5ad255bbf2780a4d8b7239` |
| 15 | `def` | [inl](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/inl.md) | 99 | `declaration-track:18a9c93ec2cf09349958f27d03af8684ee24f990f5cb4e14272d01de1ab981c2` |
| 16 | `theorem` | [left_inl](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/left-inl.md) | 105 | `result-track:dc1853fba76b4dbb8bdb3d2998a3b5bc0482aecf63c4f99bdcce30dc8e0bce53` |
| 17 | `theorem` | [right_inl](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/right-inl.md) | 108 | `result-track:5fad179aa65f5c4eea11eff5db5a1c48777bc55484af93717bfc68a92363b52d` |
| 18 | `theorem` | [rightHom_eq_right](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/righthom-eq-right.md) | 111 | `result-track:d5b496b2e99e7e38a0f7c60faedd40367894bb5dd207310654959eb3b8de9c1a` |
| 19 | `theorem` | [rightHom_comp_inl_eq_id](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/righthom-comp-inl-eq-id.md) | 114 | `result-track:bb203ab48a1856bfd240f1d9b827485d0bed3479945831ce44d61124b9c880ac` |
| 20 | `theorem` | [fun_id](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/fun-id.md) | 117 | `result-track:bc3fa893fc5ea8bcd7cb9be1cf675b97b714b4d2f548a2b691fdbca585642e9f` |
| 21 | `def` | [equivProd](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/equivprod.md) | 120 | `declaration-track:c1d7690ee13840278190de656575ba6774da0edb29e96ea8a1e24364ef3478dd` |
| 22 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/instance-source-edition-10.md) | 126 | `declaration-track:e735a80ec3a17baa44d94b2b86c4e6fcc75a3244c4d578d67eea8568f8be5415` |
| 23 | `theorem` | [card](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/card.md) | 130 | `result-track:359ea8ad081732d33520ab28e656f31da8d472bb9b3653573ec33a0b19d74cd3` |
| 24 | `def` | [congr](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/congr.md) | 135 | `declaration-track:01d5c5c46c6cb9e28d61905fa50541e4dbdb93a05df0731618b498b22ccad127` |
| 25 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/instance.md) | 148 | `declaration-track:0b228eaa71903a7cb038a38f5d698aa19e47280be93af2d179e2e3373ed2e323` |
| 26 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/smul-def.md) | 152 | `result-track:bfb5e91272293e871877a5d9ae068db7c2b2307cb667b4361a07b51ae1117d43` |
| 27 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/instance-source-edition-4.md) | 154 | `declaration-track:1e4dca389aa8545c251a7b6b70ec6d02d6dc9ab705900920ec94ad5e9c7b3ee8` |
| 28 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/instance-source-edition-11.md) | 159 | `declaration-track:eba01943b11b28cd8ae187bfd930367c4b309806e1f262bed20657139fb5bc8a` |
| 29 | `def` | [toPerm](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/toperm.md) | 174 | `declaration-track:a76efc96c895c8813a2b203f85fe8648ab86ad1c7d1f3d3d6045967c2dfbd72d` |
| 30 | `theorem` | [toPermInj](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/toperminj.md) | 177 | `result-track:95cac52947df3a759d686a58912f0d8003b5cfe11174414f2753785b03e50f7e` |
| 31 | `def` | [IteratedWreathProduct](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/iteratedwreathproduct.md) | 188 | `declaration-track:2fbb7f4d31cc515ee1a50107ccaabf9088b00d326db85506b216c8aedf32c27d` |
| 32 | `lemma` | [IteratedWreathProduct_zero](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/iteratedwreathproduct-zero.md) | 195 | `result-track:514bed3d6091d91943ea2aab416eca924239182c8ac6140c12b44240130ba261` |
| 33 | `lemma` | [IteratedWreathProduct_succ](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/iteratedwreathproduct-succ.md) | 198 | `result-track:c7bc931036a5dcace563f60e6a6398b2db24bc08537244da120128273a3edd88` |
| 34 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/instance-source-edition-9.md) | 201 | `declaration-track:c72649d3c59c6a30fcc9e43a8f08d9f4e6a103408a0a39bd7e6339e472389d2b` |
| 35 | `theorem` | [IteratedWreathProduct.card](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/iteratedwreathproduct-card.md) | 206 | `result-track:6ff8a6cce469970c750c3fb6426297f0ec5efeaf6868fda34ac276bb82c76f03` |
| 36 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/instance-source-edition-5.md) | 215 | `declaration-track:2cec3ea972e17ce1e09dbf7ad369d555be6806c7833d299087acbfaf2fcd8286` |
| 37 | `def` | [iteratedWreathToPermHom](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/iteratedwreathtopermhom.md) | 221 | `declaration-track:c9b8dc360685e52baf18fc66a9d08de48acbc41c8122fe80d8c3a8fde0b055fd` |
| 38 | `lemma` | [iteratedWreathToPermHomInj](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/iteratedwreathtopermhominj.md) | 229 | `result-track:667dae90ee02a3851ce67f0dc5e3c5aa11f49d378aa8f7029c53701c43f08c14` |
| 39 | `def` | [Sylow.mulEquivIteratedWreathProduct](../../../../GroupTheoryAndGeneralizations/RegularWreathProductPublic.lean/declarations/sylow-mulequiviteratedwreathproduct.md) | 242 | `declaration-track:700d7ec7725ae33b050e8f13a711e5077eddc5efd67651457fe3ce0c0fcf304e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a56ecc49a37186253d4f81521d148969441107f016e560698de2c879fa9b1d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/RegularWreathProduct/Variant6b7f087f8a431b04bf76d526ff766e53923573fa7a31f6684a93c40435354d48.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/RegularWreathProduct/Variant6b7f087f8a431b04bf76d526ff766e53923573fa7a31f6684a93c40435354d48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
