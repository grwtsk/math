# Verification target: Recursive In Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3e5614937527ec6ec71fdcd030e4978a96dd0b2",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveIn/Variant60ca9fe90cffaca0be25c08a8509fae08562d30a562a441122ec22128235abce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3e5614937527ec6ec71fdcd030e4978a96dd0b2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveIn/Variant60ca9fe90cffaca0be25c08a8509fae08562d30a562a441122ec22128235abce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/RecursiveIn/Variant60ca9fe90cffaca0be25c08a8509fae08562d30a562a441122ec22128235abce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RecursiveIn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/recursivein-source-edition-3.md) | 61 | `declaration-track:e489a33517303a7300503c271b06e6183e5cb11ca75fe8bc3969e4a27398ece9` |
| 2 | `def` | [RecursiveIn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/recursivein.md) | 85 | `declaration-track:0ecedc300dade36e5323292feecd71b76c874266228f9c6625e9300c2a2a8229` |
| 3 | `lemma` | [RecursiveIn.iff_nat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/recursivein-iff-nat.md) | 88 | `result-track:c649003bfe891195ffe6b20a12a0e0d11a565bba3e1f00c529d7dce896c32248` |
| 4 | `def` | [RecursiveIn₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/recursivein-source-edition-2.md) | 92 | `declaration-track:15e5bdc09c5ef66792a2bf0c2c9c6edeae2951b449daf0822d7391e5d7b101d6` |
| 5 | `def` | [ComputableIn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/computablein.md) | 97 | `declaration-track:9402d629c127babced8d8b3eb2a76ee04385f38125eb8a0be708d71d28b44245` |
| 6 | `def` | [ComputableIn₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/computablein-source-edition-2.md) | 101 | `declaration-track:c3e7b24e904148552bdde9abee5ab3cfaf9345341e41eb5b4aac3c3a0ee2b68a` |
| 7 | `theorem` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/of-eq-source-edition-2.md) | 109 | `result-track:b61c8ee46e51b98a7e2188772c6c0e70b723dd5e33237b2aa825ce7167a9f64f` |
| 8 | `theorem` | [of_eq_tot](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/of-eq-tot-source-edition-2.md) | 113 | `result-track:95267b0379150c42b75fbfe36425fe33a7d81be272cf91256c24fad34b7a88bb` |
| 9 | `theorem` | [subst](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/subst-source-edition-2.md) | 119 | `result-track:ebcdae18f31463fa8ed6fce52f7cf6bba8d3d511c420763ca04883383975ab79` |
| 10 | `theorem` | [partrec_of_oracle](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/partrec-of-oracle-source-edition-2.md) | 131 | `result-track:d48474a860f611e99b010911e26bf2db5cfba805ece5936bb404dc3e242a6748` |
| 11 | `lemma` | [Nat.Partrec.recursiveIn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/nat-partrec-recursivein.md) | 144 | `result-track:c8c81d61eb419d0d44d944dd2847b41c2342dae568ebcbc72adc8c402b78c43c` |
| 12 | `lemma` | [Partrec.recursiveIn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/partrec-recursivein.md) | 154 | `result-track:f3f0a6013378aab360936e547ca10737a2b3dd7fbe69072d44fdf002b6472bbc` |
| 13 | `theorem` | [Nat.Primrec.recursiveIn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/nat-primrec-recursivein.md) | 158 | `result-track:a4a4de3e50f27276aa4c217bef142cbf939899aa261b0dcb31db944d35d7dd7c` |
| 14 | `theorem` | [Computable.computableIn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/computable-computablein.md) | 162 | `result-track:b42a27d8bfc5d38cbe9986a3be7fb3fd350c39f8eb890b64e59c23cc543e269c` |
| 15 | `theorem` | [Primrec.computableIn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/primrec-computablein-source-edition-2.md) | 166 | `result-track:8749d06a512a2dab1b0196500789ffa7b567e173163b225b259ccd1d86a3b5d1` |
| 16 | `theorem` | [Primrec₂.computableIn₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/primrec-computablein.md) | 170 | `result-track:251f0c28d7802c24dbe16881c11ad2124300b3ac42525f7632fd4ae382a48eca` |
| 17 | `theorem` | [ComputableIn.recursiveIn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/computablein-recursivein-source-edition-2.md) | 174 | `result-track:e7f84c4fcf371abd70e385f21a83de346e4a7963a4e5bd72e4ef323fa725e17f` |
| 18 | `theorem` | [ComputableIn₂.recursiveIn₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/computablein-recursivein.md) | 178 | `result-track:95aad6b3b50a96fc2aef5a2c11dc0bf6aa8f65732534dfe1e3d733ff0f820965` |
| 19 | `lemma` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/of-eq.md) | 187 | `result-track:0753e9be9cabf5da029341f43d44be88fca0c2017d933c5171ac32c63b34f68b` |
| 20 | `lemma` | [of_eq_tot](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/of-eq-tot.md) | 191 | `result-track:3611b71a53b0f306495437771ea1cfb3137077eef12fcfe328b0510d104f22f6` |
| 21 | `lemma` | [oracle](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/oracle.md) | 195 | `result-track:cc9621e1310f2d08fe638b012c19a10222061e363a29b7c57689f9bcc1a13849` |
| 22 | `theorem` | [some](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/some.md) | 198 | `result-track:6ad294502f29709e17b6ceab8eb573dbff9a13458429d0c1e89af0dcfd8c90db` |
| 23 | `theorem` | [none](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/none.md) | 201 | `result-track:e16f5b54b80e13de5d7912c904847a20cee71e4dc9115d14a07d5b5a5b4eda12` |
| 24 | `theorem` | [subst](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/subst.md) | 206 | `result-track:c77a42d4828098c9a45bf5b7f390b99899a80f502c970f38a0c1457115db4234` |
| 25 | `theorem` | [mono](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/mono.md) | 212 | `result-track:6befe2d69256d081f7d00d3180894cf513c0f8871480654a87c651d755172847` |
| 26 | `theorem` | [partrec_of_oracle](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/partrec-of-oracle.md) | 217 | `result-track:549f71ca59da0364398c751b5f424ac7c2cb8e6e56fab4ce723959f307511c74` |
| 27 | `lemma` | [partrec_of_const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/partrec-of-const.md) | 222 | `result-track:b54080a83e378d630ecdc94ef218b68d933ee265a3ace76412a08fb3e209e8dc` |
| 28 | `lemma` | [recursiveIn_empty_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/recursivein-empty-iff.md) | 229 | `result-track:978abaca5f28c95109ab72813c0a4914dfd16d385ec1b0d3690253832587370f` |
| 29 | `theorem` | [partrec_iff_forall_recursiveIn_singleton](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/partrec-iff-forall-recursivein-singleton.md) | 235 | `result-track:b742b8a01203c871e979db60189f8c994c0f6d0950a1c5b177e756fef0fa61cd` |
| 30 | `theorem` | [const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/const.md) | 241 | `result-track:d310dc46491fb29ddd4c51e11e3bf3aba45c49badfd93091b4600b3d52482bc9` |
| 31 | `theorem` | [id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/id.md) | 244 | `result-track:78d3294ddd666f17f92e9b1d3c03413de242aabb4642b02767d14cc5fea83543` |
| 32 | `theorem` | [fst](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/fst.md) | 247 | `result-track:18c48f301709c911cf454fceffaaa5768824cf4ea7c0ee4685a46ecf67383dec` |
| 33 | `theorem` | [snd](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/snd.md) | 250 | `result-track:957e491c6edb1b42f3967ee92d55a7b009358586bad44db8f656f350763c0dac` |
| 34 | `theorem` | [unpair](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/unpair.md) | 253 | `result-track:53bfa20cd3128073c3de1c12e4cd3d5d6558f3fcd080c93ed503548b90729513` |
| 35 | `theorem` | [succ](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/succ.md) | 256 | `result-track:7ab5e7fcd66cd0ac628e40b725b5bb83554e922837c5fc6354b7cac5ae93687c` |
| 36 | `theorem` | [sumInl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/suminl.md) | 259 | `result-track:35656d34e96e384034af4387134552cbeb5181dc1a6c560d7377068eb05c76d4` |
| 37 | `theorem` | [sumInr](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RecursiveInPublic.lean/declarations/suminr.md) | 262 | `result-track:3a8e59fa1c6ba4bd632dd6781e3c72b912bc924ec8535ed1c1e1efd4fe8f853f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=278c4a78b93a447ca79c69239d1acf5f03c7e1a476aa54f7cd9956af5d6cd912 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveIn/Variant60ca9fe90cffaca0be25c08a8509fae08562d30a562a441122ec22128235abce.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/RecursiveIn/Variant60ca9fe90cffaca0be25c08a8509fae08562d30a562a441122ec22128235abce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
