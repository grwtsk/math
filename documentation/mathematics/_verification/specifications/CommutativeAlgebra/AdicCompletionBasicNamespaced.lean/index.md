# Verification target: Adic Completion Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f06e8641d53e29e662869e79faca58f4a89b458",
  "lexical_observation_count": 94,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant8f233e70758b45f8f9498d6014222e6ac94b7b0b2ae52005974ca3ec6a513350.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f06e8641d53e29e662869e79faca58f4a89b458`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant8f233e70758b45f8f9498d6014222e6ac94b7b0b2ae52005974ca3ec6a513350.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant8f233e70758b45f8f9498d6014222e6ac94b7b0b2ae52005974ca3ec6a513350.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SModEq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Ideal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.PowTransition` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsHausdorff](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/ishausdorff.md) | 46 | `declaration-track:d6c0cbf693803b78c9edf0b868a1b11d8058b93abb0ccc6ba6b0a217f06666d7` |
| 2 | `class` | [IsPrecomplete](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/isprecomplete.md) | 50 | `declaration-track:75d149a69d57bc5cd09aef36f06fc4811dfad00c46349a81617b648add899e85` |
| 3 | `class` | [IsAdicComplete](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/isadiccomplete.md) | 55 | `declaration-track:4ef03e6f659e662b3b35fc6741a79690a2e45e24d36b488f2070601e29c37eaf` |
| 4 | `theorem` | [IsHausdorff.haus](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/ishausdorff-haus.md) | 59 | `result-track:536723f00ce80fbedd733df9656acec6ff5d0d96b94031a710312ac9dc27003a` |
| 5 | `theorem` | [isHausdorff_iff](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/ishausdorff-iff.md) | 63 | `result-track:aa12ce0877eb4dda98b85648a27769434ecd10b81e5bd507dcc8c05072a3e403` |
| 6 | `theorem` | [IsHausdorff.eq_iff_smodEq](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/ishausdorff-eq-iff-smodeq.md) | 67 | `result-track:83bf7fbf631f25bd3780e4fab2458d99c7521e7e2d035e3ad4cd7b1dbd56b623` |
| 7 | `theorem` | [IsPrecomplete.prec](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/isprecomplete-prec.md) | 74 | `result-track:301c0e909a523717bdc777f4c221116f9ada31b803517e9db754d1c0155cb4ee` |
| 8 | `theorem` | [isPrecomplete_iff](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/isprecomplete-iff.md) | 79 | `result-track:204aa935b112f8faa1c07b5e906621b24a726fca90e8a968d052b17ae5cc092f` |
| 9 | `abbrev` | [Hausdorffification](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/hausdorffification.md) | 89 | `declaration-track:edba98f3629655b63651dea1efec0e8fb56c2fe1ff202437d1e396024ddf9f06` |
| 10 | `abbrev` | [AdicCompletion.transitionMap](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/adiccompletion-transitionmap.md) | 94 | `declaration-track:83ae0523faf458924e15c10aba0bf96403fce14e2387519c4fe36609d0cbc04a` |
| 11 | `def` | [AdicCompletion](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/adiccompletion.md) | 100 | `declaration-track:08adfd085e091182e59de58cfcb1aa02c99e2de40d99327125b1fa87b53609b0` |
| 12 | `instance` | [bot](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/bot-source-edition-2.md) | 106 | `declaration-track:430d6c06e2f5d0acffcdb69343a7acb8af153644dcca301b453396b37d3b00ff` |
| 13 | `theorem` | [subsingleton](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/subsingleton-source-edition-2.md) | 110 | `result-track:80233e8cd8feaac42f2002122b13d907f10afdba4c823d7727d5177ce88fec27` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance.md) | 115 | `declaration-track:06d201bb7fecfdf654bd5954df1cb6181d46766b1cab5be364d7e70c9f870f33` |
| 15 | `theorem` | [iInf_pow_smul](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/iinf-pow-smul.md) | 120 | `result-track:0cff57c41b784c0bb8ac2a956e621c330df143b010a532de3430564f446bc3f9` |
| 16 | `def` | [of](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/of.md) | 129 | `declaration-track:6f7ef81da612c4846b8513a4d85719f16900cd23862b14b0d08d12517d89b5e7` |
| 17 | `theorem` | [induction_on](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/induction-on-source-edition-2.md) | 135 | `result-track:8eedb1f580da99f3c8e969c4a01942604b59c2a87d31fe2ef68c5d1e26b61f9b` |
| 18 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-14.md) | 141 | `declaration-track:ba6b4f97648e9abe375d833c0a1e239cfb187b3894275c0d3440cbcc18b0f738` |
| 19 | `def` | [lift](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/lift-source-edition-2.md) | 153 | `declaration-track:c84745e1e6aa6253b904e723bd5e86086e29bf9b6c2d8fff5abab2fc806c0633` |
| 20 | `theorem` | [lift_of](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/lift-of.md) | 159 | `result-track:5a5262a54806f4fa549041767e1147efe4a93b70b054830036008216dd279716` |
| 21 | `theorem` | [lift_comp_of](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/lift-comp-of.md) | 162 | `result-track:b5b4bd3b737fd5d3692e4fd7bea2da54e34532c4e4545eda3eebd3a8d26a267c` |
| 22 | `theorem` | [lift_eq](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/lift-eq.md) | 166 | `result-track:105bd77df59b46d95657d3bf87372478e6d847b181a1bef96ee6c297fc954077` |
| 23 | `instance` | [bot](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/bot.md) | 174 | `declaration-track:3ff04e1c70c8c1057f8cfb9d6081005a936497aba69316d81a9f84ab7eca4f85` |
| 24 | `instance` | [top](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/top.md) | 182 | `declaration-track:411ec04942a3e4a989dc18684c2e9d66c928ffde2939e13248dd12223611e504` |
| 25 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 188 | `declaration-track:512d13851a09ab725e5a21c8f032131111ed34a48b6be3265f8bc9512e857ebe` |
| 26 | `def` | [submodule](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/submodule.md) | 197 | `declaration-track:4f80553ee78a881e3f2f5a81e1053d74c45e488f241a51f04175b30f0fe2cb66` |
| 27 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 204 | `declaration-track:86878b27f5cfab0e5004142ee7e821e1a8d9ff31f75395779096ce53bfc6e584` |
| 28 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-17.md) | 207 | `declaration-track:cf888e644b68c5a504c699dbf73f1636189aee1842576274219e17656c8291f2` |
| 29 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 210 | `declaration-track:59a7d5b599ba077cd8a10809459d7931659006976bb646e57fc4db4a8f694035` |
| 30 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 213 | `declaration-track:5c21a604141c4ae062626030d56532046cad674a05fe61ab253db107f9d9a689` |
| 31 | `instance` | [instSMul](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instsmul.md) | 216 | `declaration-track:9920990c9400cb4c57857dc8966c01cf55a2a5840eec250c4190a59ac3b3cd45` |
| 32 | `lemma` | [val_zero](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/val-zero.md) | 219 | `result-track:b6e354825b0b11eb9b785592edc224cc1e899b482b48bf5853f32ef99b17525b` |
| 33 | `lemma` | [val_zero_apply](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/val-zero-apply.md) | 221 | `result-track:4b84485e0125933b75e48b61ff23c1cdbe1a3c19cc60ebe57af7c86f77eb33f7` |
| 34 | `lemma` | [val_add](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/val-add.md) | 225 | `result-track:1c4660df781b7ecbce73876127781b5516028e5fc2bc4610b3483005e737b995` |
| 35 | `lemma` | [val_sub](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/val-sub.md) | 226 | `result-track:e473e6540345292a36a9f20e0f6675d4391cdb79f0c135ca1ccd39525e3853a5` |
| 36 | `lemma` | [val_neg](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/val-neg.md) | 227 | `result-track:b882c48e3ca1ba16c8e9cb633f497d3d4189115f7f065e0b8c4c583ba47c34cd` |
| 37 | `lemma` | [val_add_apply](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/val-add-apply.md) | 229 | `result-track:8b061473ea55138d4c868106797e44615e20a2df600c7290f9c4272e9d1b34fa` |
| 38 | `lemma` | [val_sub_apply](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/val-sub-apply.md) | 230 | `result-track:3ff934952f7ea5e9060d510f38034a48ee5ef46f550fa2921c361422c11f5700` |
| 39 | `lemma` | [val_neg_apply](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/val-neg-apply.md) | 231 | `result-track:181c2c1c82fe953e7ab7066d76b40ed7f716cbea9d04bd535199e8debfa81455` |
| 40 | `lemma` | [val_smul](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/val-smul.md) | 236 | `result-track:c05191e89286ebb9282714fc20d4ce692ebb18729ae12f80f188c0481cdf9219` |
| 41 | `lemma` | [val_smul_apply](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/val-smul-apply.md) | 239 | `result-track:6980fbb846bedf4355a3093664a0fdd927ba71352f303c0cd0ca25d20a4200ea` |
| 42 | `lemma` | [ext](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/ext.md) | 243 | `result-track:55f82935900fc33f385d756d696ca42bd7f830507284fe528a8168fdb807c7a6` |
| 43 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-20.md) | 247 | `declaration-track:fa4eb910840482f26b813b90cd82e7a7b71ca9f07a918a41893760f2b9f44b12` |
| 44 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 252 | `declaration-track:46019c969d1e8a6fb88146a32f64ac9e82b2610521dd4f9c97489c322acf1c38` |
| 45 | `instance` | [instIsScalarTower](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instisscalartower.md) | 258 | `declaration-track:6770c78475e9884afbe259a1589c80e5afa8e68f0a5c355925df09d02d64f1b4` |
| 46 | `instance` | [instSMulCommClass](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instsmulcommclass.md) | 263 | `declaration-track:068f95a59fdf837d605315a9dd66d31bbb1122b981be59b521eeddd0cf85a682` |
| 47 | `instance` | [instIsCentralScalar](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instiscentralscalar.md) | 268 | `declaration-track:8efd097a64c0f69ae6248e80227ada95cee6eb20bede59dec7cce8187ae86a80` |
| 48 | `def` | [incl](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/incl.md) | 275 | `declaration-track:ae60f83fa3020c0b90b60699cb169dea8bb581fe7ff5979013cb219d75c65549` |
| 49 | `lemma` | [val_sum](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/val-sum.md) | 283 | `result-track:ee67b3ac5d997417a34ff34898e84098a148d876d362a75d2aba42d5d8866e72` |
| 50 | `lemma` | [val_sum_apply](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/val-sum-apply.md) | 287 | `result-track:049217196a0fdbd2bec768b71732c8dfc241f0dd6ec2a90a9d4e643c0f85d79c` |
| 51 | `def` | [of](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/of-source-edition-2.md) | 293 | `declaration-track:bef0413cb119c89ff53742cb432dc517b3840370c7d97c2d585db41dd3699d1e` |
| 52 | `theorem` | [of_apply](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/of-apply.md) | 299 | `result-track:23894d7cea304dfe442ceb556116b582f38a186818007095d21a022bcb50e4d7` |
| 53 | `def` | [eval](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/eval.md) | 303 | `declaration-track:ca9421ce98c5461ed15a69a392820e5dcb7411da7a83fbce2493e1ffe5f8797e` |
| 54 | `theorem` | [coe_eval](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/coe-eval.md) | 309 | `result-track:5a703c14f4a958c94604dbafdbfb7d5a57b8598932c32630483179bc30e17865` |
| 55 | `theorem` | [eval_apply](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/eval-apply.md) | 313 | `result-track:62ab893da7dbfb40b02eeea0c2c76e55400c17e097594a6938327bbde44eb4ae` |
| 56 | `theorem` | [eval_of](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/eval-of.md) | 316 | `result-track:6217080e3882e2c5c3588114a04605855a393854442daa36e6efb2c5373e43e2` |
| 57 | `theorem` | [eval_comp_of](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/eval-comp-of.md) | 320 | `result-track:5f0c0b907f5d76b4eade3005f5a8bf676b188a6ed95ec320b8ad6688b39805a7` |
| 58 | `theorem` | [eval_surjective](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/eval-surjective.md) | 323 | `result-track:6d8ec8704caa261df17cf372ccd1d1c2eca3f2c6007b55a68824dc79bba5515a` |
| 59 | `theorem` | [range_eval](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/range-eval.md) | 327 | `result-track:f412497a2c0d805eeaedf30d20576a829cdc9ce67b4c95e041d0a62381913fb0` |
| 60 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-13.md) | 334 | `declaration-track:b06247c786aa5b15358118d655713ae0bbda604decbd67b0d8720fc700ffa994` |
| 61 | `theorem` | [transitionMap_comp_eval_apply](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/transitionmap-comp-eval-apply.md) | 343 | `result-track:97a579c20c29f182885214cb91896b85577c4a73cfd70795ed9a7991763853e8` |
| 62 | `theorem` | [transitionMap_comp_eval](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/transitionmap-comp-eval.md) | 348 | `result-track:599d8b636cd0a85e4931a295944ecdc53320616fc090db157c68d5e6c68412af` |
| 63 | `def` | [IsAdicCauchy](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/isadiccauchy.md) | 355 | `declaration-track:5f3c486e124ad1510c2fd3687cd3a012d8fa53a189629b9963bb8ff7e348a05c` |
| 64 | `def` | [AdicCauchySequence](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/adiccauchysequence.md) | 359 | `declaration-track:bf4ccd478788582be76cac49b022872717c9a6c5353234ea54dffb9e02fbe54b` |
| 65 | `def` | [submodule](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/submodule-source-edition-2.md) | 364 | `declaration-track:c47d940be428ed3e89d3caa56fb96592d2c51109eba1f69dd9973cef0b4a2c1d` |
| 66 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 376 | `declaration-track:90d2ab2a155ef70c342ef1748ead869b9613a1244e123718fef42f8cdad512f1` |
| 67 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 379 | `declaration-track:a2d55b4c49fe6411e09133794d305fcff27cf2a30e2c857c6b546480c22d7a71` |
| 68 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-18.md) | 382 | `declaration-track:d973ea7bd3444668e721fedf690de9c71e384fb695b0444a370f3047a051b258` |
| 69 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-21.md) | 385 | `declaration-track:fc49e77f16ede9329e6d6bbcbfcd857d083f45a4c78a68b5b33ce4cfa94d690a` |
| 70 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 388 | `declaration-track:8f9aebbefef7275a1b1bc330da5bf6cac45052ec3d89227cd33239c32496c190` |
| 71 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 391 | `declaration-track:0da256f0d99891f6ae03cd18b17f8bc302ffa1d11b86741f8a50f4b473621415` |
| 72 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 394 | `declaration-track:6360e1fb2f514c6039d1ce62966bd3cbf2f5c00cf906147628c9de7f47d76ff6` |
| 73 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-19.md) | 399 | `declaration-track:ebb78ce8e5ab908e2bc8bf63c2ae0e09e857a0751c0beed473c5f80c1d7c1151` |
| 74 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 402 | `declaration-track:5dc9f5d4dcc15d517021f93755290908a5ac5f4cdd41801784b80f9f9a3d8d16` |
| 75 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-15.md) | 407 | `declaration-track:c2c4aaf6650a06d4491af316b6f18b3fad41d4ab8f481c21cbd588a4126d3569` |
| 76 | `theorem` | [zero_apply](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/zero-apply.md) | 411 | `result-track:12372c209893141c9f4e42e04e804bc785371ce38878e37dd95df065d6fcb2f8` |
| 77 | `theorem` | [add_apply](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/add-apply.md) | 417 | `result-track:3cd38406a9fc167d3b0abb87a1170d0d230e591c36835cc6d4fc9dffea0abbd2` |
| 78 | `theorem` | [sub_apply](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/sub-apply.md) | 421 | `result-track:b78efb3bc51ee7131c6845bbfdb7828f1ca92646a11f74d1d8b1756ad3b9667c` |
| 79 | `theorem` | [smul_apply](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/smul-apply.md) | 425 | `result-track:75359c8e74d72a6870fd79b055b3c476b094a44f85778bb7f3424f7348cc3506` |
| 80 | `theorem` | [ext](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/ext-source-edition-2.md) | 429 | `result-track:86d87b27fed85e47d12134de119d63bc0e1ca53425d5eb599e2f3c9d311423f3` |
| 81 | `theorem` | [mk_eq_mk](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/mk-eq-mk.md) | 433 | `result-track:130bc407dff04e5214d74171d7f821211a63172c42ceebbe26ada84e1dc06107` |
| 82 | `theorem` | [isAdicCauchy_iff](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/isadiccauchy-iff.md) | 441 | `result-track:2506430f4bdea4632b3b3fd0922605f2ac2999bb7a5cc65d24853adf75fbcfc3` |
| 83 | `def` | [AdicCauchySequence.mk](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/adiccauchysequence-mk.md) | 456 | `declaration-track:ff55927751e2993275c13fe1bd0012c4f898ab2ccc581a419667a2690f340f1a` |
| 84 | `def` | [mk](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/mk.md) | 463 | `declaration-track:70c6cc14cc6269032b1927052b7137cd880f3eb0693b680a066405ca1cf22cfb` |
| 85 | `theorem` | [mk_zero_of](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/mk-zero-of.md) | 472 | `result-track:80c74c32112d17094e779ae2400ca09a6f5b2af4c21f542b2701b2da39235ca8` |
| 86 | `theorem` | [mk_surjective](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/mk-surjective.md) | 483 | `result-track:d6687e040e60ebe05a709550d96f80643bd99eeadc34f6e8788b3a356ae1ecc7` |
| 87 | `theorem` | [induction_on](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/induction-on.md) | 496 | `result-track:82b8b831949b998b0d72d14ca249c8f0c8481f47691b420d7faa005c5e875894` |
| 88 | `def` | [lift](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/lift.md) | 505 | `declaration-track:0ec1bc3562c3687a2036330229c511d41147b535d835bee83eedbfbbb0f10a8f` |
| 89 | `lemma` | [eval_lift](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/eval-lift.md) | 517 | `result-track:7032f43a67bce82e951d189f9b36e2392c8652091bbd4e80c3f8267068627cff` |
| 90 | `lemma` | [eval_lift_apply](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/eval-lift-apply.md) | 523 | `result-track:68025931e016979704651b6420f103afcf52fb59ed4f9cb2ed54b47cb8a68664` |
| 91 | `instance` | [bot](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/bot-source-edition-3.md) | 532 | `declaration-track:440de94893718ffdee19c1b2a316edc70cf0d00a31d333a0c0e9bd4561752269` |
| 92 | `theorem` | [subsingleton](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/subsingleton.md) | 534 | `result-track:4776a1430d8dcdee3be78053405d58a98294fa0199ada1ec318075d14d7eeeb3` |
| 93 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/instance-source-edition-16.md) | 537 | `declaration-track:cea14cecd124763181bce97fa00d85660baf6f3936ad02f18c5636a6c97fc62d` |
| 94 | `theorem` | [le_jacobson_bot](../../../../CommutativeAlgebra/AdicCompletionBasicNamespaced.lean/declarations/le-jacobson-bot.md) | 541 | `result-track:e42a3897133a8f58bf44983661f226016f1b080dad1b2cf8572c08c847832f62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c8c7682f57221e9c2770e2574c3a8c27ed319815b14126a64f4ef37a2fcac0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant8f233e70758b45f8f9498d6014222e6ac94b7b0b2ae52005974ca3ec6a513350.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant8f233e70758b45f8f9498d6014222e6ac94b7b0b2ae52005974ca3ec6a513350.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
