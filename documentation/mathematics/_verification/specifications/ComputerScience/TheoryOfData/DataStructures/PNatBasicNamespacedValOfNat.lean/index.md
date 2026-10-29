# Verification target: PNat Basic Namespaced Val Of Nat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea35c90c8b23239efc257d65d54efbad59beada3",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant903e79c7a4068ff4b40b67f11e5e7988c07531b31892236a38227ce246635d91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea35c90c8b23239efc257d65d54efbad59beada3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant903e79c7a4068ff4b40b67f11e5e7988c07531b31892236a38227ce246635d91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant903e79c7a4068ff4b40b67f11e5e7988c07531b31892236a38227ce246635d91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Positive.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Equiv` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCommMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/instcommmonoid.md) | 33 | `declaration-track:342790dd40d7180f815987cd6304b9bee2900e6c9bf410be3d1f1779d96aa9b8` |
| 2 | `instance` | [instIsOrderedCancelMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/instisorderedcancelmonoid.md) | 34 | `declaration-track:8ea4e99923ca474775389ec6264cd3e137780c874f7ea7d8525acf0d0c55fe61` |
| 3 | `instance` | [instCancelCommMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/instcancelcommmonoid.md) | 35 | `declaration-track:f826fa43a021a2ccf07b964ca0838bc9bf006f67502c2fbf233557569ee98d7e` |
| 4 | `instance` | [instWellFoundedLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/instwellfoundedlt.md) | 36 | `declaration-track:afd96299c91ec0bff1fca6d82cb85ebeae59eecf432e45a16ba3638ebd333ed0` |
| 5 | `theorem` | [one_add_natPred](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/one-add-natpred.md) | 39 | `result-track:31f9a2c395a5151fde1b881def2d30960d35db25656201ecdbb8795d5ffc7cd8` |
| 6 | `theorem` | [natPred_add_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/natpred-add-one.md) | 43 | `result-track:7cd7e27ee004df4c5b55ee720ee1db5181de6cadc1bc066411694af82f8afea0` |
| 7 | `theorem` | [natPred_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/natpred-strictmono.md) | 47 | `result-track:c69e750d8f32a3e6f4db8b0d757e3ac11de876c9c9352584d1f7d34cd40c3bd9` |
| 8 | `theorem` | [natPred_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/natpred-monotone.md) | 50 | `result-track:7db5889bbd6b03ea79e4163cbfb27eb3bb197c0126630a6f172af51e62ee22a6` |
| 9 | `theorem` | [natPred_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/natpred-injective.md) | 53 | `result-track:fff5e89f5acc05e03d27a15b1d7b222c8e24bf6aea95329f3d7c51b141d7b4d3` |
| 10 | `theorem` | [natPred_lt_natPred](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/natpred-lt-natpred.md) | 57 | `result-track:27457273b7780d0e206c725a07ae3075194f97e40ff377cf6443ad8a6a5f8823` |
| 11 | `theorem` | [natPred_le_natPred](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/natpred-le-natpred.md) | 61 | `result-track:c7fa833b6d55e03e49b039536907034208855945ea805815ff8a259ddf186dbc` |
| 12 | `theorem` | [natPred_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/natpred-inj.md) | 65 | `result-track:83539b1e2a273ea4fd94dff26851ea79619e36143704967e32de05a19c562082` |
| 13 | `lemma` | [val_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/val-ofnat.md) | 69 | `result-track:3353b70fbffa52490495a97249fbf948b5eb23738f33b0ca15e7b02234c4ad08` |
| 14 | `lemma` | [mk_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/mk-ofnat.md) | 74 | `result-track:089e9813bbe09a32ecdd4de7fde5f781a14a8b1af72eec00c2432ad99c2edd86` |
| 15 | `theorem` | [succPNat_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/succpnat-strictmono.md) | 83 | `result-track:e4b7bb989d296ac54aa6a73b740c6b51579376d40cdcdfaf0696f8432814067b` |
| 16 | `theorem` | [succPNat_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/succpnat-mono.md) | 86 | `result-track:d6fa1eb3d591c927188553d324417a32b32ca84b822ba3cfb49a936975131691` |
| 17 | `theorem` | [succPNat_lt_succPNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/succpnat-lt-succpnat.md) | 90 | `result-track:7f8993d4becef4b924254d99a637c524f588e9147d9cb463c7512daef597985f` |
| 18 | `theorem` | [succPNat_le_succPNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/succpnat-le-succpnat.md) | 94 | `result-track:18d1407eb0fe4cf944a90823846f7f7c96d2d1ca9c85542740df515471789941` |
| 19 | `theorem` | [succPNat_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/succpnat-injective.md) | 97 | `result-track:00e2cc8fa684f165d782a53d88964df5a448238dc25fedf04c7afb92469a646a` |
| 20 | `theorem` | [succPNat_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/succpnat-inj.md) | 101 | `result-track:a57696c4b55f856dd7c2e4b4904a105faccae7024dda2f130991624e86cb4f30` |
| 21 | `theorem` | [coe_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/coe-inj.md) | 116 | `result-track:017d460809aec590b3b57b7876eaba507b44aace3afce0352b5b471b720ccb81` |
| 22 | `theorem` | [add_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/add-coe.md) | 120 | `result-track:4316acfb65a9920b51ae4ffbb15d85676f7db27a6d25392f5c3434dcc0fd14d5` |
| 23 | `def` | [coeAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/coeaddhom.md) | 125 | `declaration-track:677b9941f2c9b3efdeb84cbe3a9aa790d2ebd983994099c7720af19bd650f15b` |
| 24 | `instance` | [addLeftMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/addleftmono.md) | 129 | `declaration-track:f770cef908bdb54a2f8077b235db659f86230097a4917c03de12c5fea6858c0c` |
| 25 | `instance` | [addLeftStrictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/addleftstrictmono.md) | 132 | `declaration-track:2969fc15626e1fc1dd7a5b3f812938fe7deffafb7c0f21199ae46c1c2845bdaa` |
| 26 | `instance` | [addLeftReflectLE](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/addleftreflectle.md) | 135 | `declaration-track:51588aa761543fca6f56cf0f66156cad671a4b303ed0904b2c4567fde9879aca` |
| 27 | `instance` | [addLeftReflectLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/addleftreflectlt.md) | 138 | `declaration-track:3ffc8b121efbb2344b0ff42921edda9a0391af053754c9e4c5b30747b754dc54` |
| 28 | `def` | [PNat Basic Namespaced Val Of Nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-on.md) | 143 | `declaration-track:00e269c56ecea7950043095eb7e754e12a8dd1db66ce3efe438f1008e5b5fd41` |
| 29 | `theorem` | [PNat Basic Namespaced Val Of Nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-on-source-edition-2.md) | 148 | `result-track:45ac6410e0acd8e85214b8c77c93ef93d529b2a649f0fcd341e371f62bd9f87b` |
| 30 | `theorem` | [lt_add_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/lt-add-one-iff.md) | 151 | `result-track:a4d82ad5931f8722017bee917609d083bbecc5293fbf02cc78e9ddd7b652ac93` |
| 31 | `theorem` | [add_one_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/add-one-le-iff.md) | 153 | `result-track:05a2bc882230ed9bc5bec05db0228a034a49ac6fd12ef84ab88d571bf19ea71e` |
| 32 | `instance` | [instOrderBot](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/instorderbot.md) | 155 | `declaration-track:6bfa84c11aeedf5665e99a673e6f443f44ee02e735b7092b4a319231bd8829ad` |
| 33 | `theorem` | [bot_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/bot-eq-one.md) | 160 | `result-track:674e0154cf22517e0638fddbbd200ed3f0e7749c642c43083f556e7486dc6a99` |
| 34 | `def` | [caseStrongInductionOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/casestronginductionon.md) | 164 | `declaration-track:115cab22cd8236c3acd5af5b0877c1aaef9063c3a21d68f86a57a97e60ebb692` |
| 35 | `def` | [recOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/recon.md) | 177 | `declaration-track:d808bad65618a4fe468e2005019d9de0a7e1b46178602e837b339e718a991298` |
| 36 | `theorem` | [recOn_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/recon-one.md) | 187 | `result-track:626e2ba68c7621673fc0f957d45fe65b3a589cc40e75d32de73671f7c13ce98b` |
| 37 | `theorem` | [recOn_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/recon-succ.md) | 191 | `result-track:93b159d2e2e1ecac84357266d80def770b994e5918a4e14d16d44503d157e601` |
| 38 | `theorem` | [ofNat_le_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/ofnat-le-ofnat.md) | 197 | `result-track:ae3d431a50a5c7d4f80e90000e53db16c52b05f715e468d2e4e467ebd45af4f1` |
| 39 | `theorem` | [ofNat_lt_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/ofnat-lt-ofnat.md) | 202 | `result-track:a42ea2460298efab1e35d86bb04dce8af179f55a3348b2ca0aba7eb47ce105f0` |
| 40 | `theorem` | [ofNat_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/ofnat-inj.md) | 207 | `result-track:c553f58e736331bc016955a87b1fe8372b3aa3318be145f9998a8f4c9560be5e` |
| 41 | `theorem` | [mul_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/mul-coe.md) | 212 | `result-track:ab4d8a79cdaa27998b1910242c36431303520c58594dcdc7448d7eeb3237983e` |
| 42 | `def` | [coeMonoidHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/coemonoidhom.md) | 216 | `declaration-track:d7ab6116b20464aeb05bd94550f6afe6008d4fd75a1b392f428d4c83b8b5d4e9` |
| 43 | `theorem` | [coe_coeMonoidHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/coe-coemonoidhom.md) | 222 | `result-track:62a0a7518b55ad178a1f66913d69bcc3faa70d988a854ac7d5bd1e3931dbecce` |
| 44 | `theorem` | [le_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/le-one-iff.md) | 226 | `result-track:6296fba3596dda51dfc2b853ab964d38b62d01aa3df3296c25ea09c8bf87b043` |
| 45 | `theorem` | [lt_add_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/lt-add-left.md) | 229 | `result-track:2422ad3d0264624065361da85cab61797e4b86eb99148b2f4063e1ba1943a160` |
| 46 | `theorem` | [lt_add_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/lt-add-right.md) | 232 | `result-track:404b759d4f58319743fa516401cc0e3c2e4d7320b71a242a788721ee93896f6e` |
| 47 | `theorem` | [pow_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/pow-coe.md) | 236 | `result-track:71392f1978451e344a2c13dc402411a9fc8ad0d14fc08a92b22e5b2922fe0cbb` |
| 48 | `theorem` | [one_lt_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/one-lt-of-lt.md) | 240 | `result-track:1aac82b37405bce58aa895db8a7d04ee4db14f02a67405e9f2abbd5d90c60e32` |
| 49 | `theorem` | [add_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/add-one.md) | 242 | `result-track:30730e35e54430f45a93e1471100b679b9c4c0be64f83c1e14574c60d2b4967e` |
| 50 | `theorem` | [lt_succ_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/lt-succ-self.md) | 244 | `result-track:bcd23554666e6fae80110aa7d9068e7c054f3dcef3ecb9263804c3bf96a93565` |
| 51 | `instance` | [instSub](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/instsub.md) | 249 | `declaration-track:cc354da181fe850057e913aac29bedc442ea34b58153d541ce217a4b08c89946` |
| 52 | `theorem` | [sub_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/sub-coe.md) | 252 | `result-track:15fb186780833080d56c195122e4315d7c6d70a90a8d506d374be60f69d45f0d` |
| 53 | `theorem` | [sub_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/sub-le.md) | 259 | `result-track:d759e03049ba6deb0c2ab068119ffbf5ede3c7585d64611d09d8b33c52e9c3ad` |
| 54 | `theorem` | [le_sub_one_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/le-sub-one-of-lt.md) | 265 | `result-track:9efa53c04d5503d3279267c0eed7a2d424317e3059d4f2f98a2d19bd6e5ca0a7` |
| 55 | `theorem` | [add_sub_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/add-sub-of-lt.md) | 271 | `result-track:1c1319ce638c6d6a1818cd6705294f0a67c0c606b9bfd9aa945481404f56a2f7` |
| 56 | `theorem` | [sub_add_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/sub-add-of-lt.md) | 277 | `result-track:fde1334c372c4c3b59ca74d3c317e5c35655369d541296c73f5bc0148a5d669e` |
| 57 | `theorem` | [add_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/add-sub.md) | 281 | `result-track:11107f2603f6f6543edfe02ce866d318dd0e5603a82c16c24527ead183536d46` |
| 58 | `theorem` | [exists_eq_succ_of_ne_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/exists-eq-succ-of-ne-one.md) | 285 | `result-track:e5f17bf77e994aceafff5d06bffb19c59c7a18ab7c43ee26766da67a1ad094b0` |
| 59 | `theorem` | [modDivAux_spec](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/moddivaux-spec.md) | 290 | `result-track:ac53ec39842d1b1329aeb635ecec8f77e3ddfb30fcf3897bfce80f663d05ed9d` |
| 60 | `theorem` | [mod_add_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/mod-add-div.md) | 299 | `result-track:281e4c43fdae7a871fd13ab5aa3713d70d74ce65569657d63b54d7e6ef79050a` |
| 61 | `theorem` | [div_add_mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/div-add-mod.md) | 308 | `result-track:515329596cc836726dd07617ff51c5a20216c11e01b58b5183f24702507029ee` |
| 62 | `theorem` | [mod_add_div'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/mod-add-div-source-edition-2.md) | 311 | `result-track:a8610f6985d95003c2a499d6ae7332c13cf8ebd502bdd28cb8d95dd7f338fb76` |
| 63 | `theorem` | [div_add_mod'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/div-add-mod-source-edition-2.md) | 315 | `result-track:cb32a8ac11caa1d1838464836d5c1d7e422b85d233af8e5f731d3d93ccd49937` |
| 64 | `theorem` | [mod_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/mod-le.md) | 319 | `result-track:f1ead70e0e20d19d868a3d7eb30ce35164ed3d0e7bbd26bc1db877ed175c4a39` |
| 65 | `theorem` | [dvd_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/dvd-iff.md) | 334 | `result-track:02311ceca123c768e4f3747ff284252ba113a6831a67b3d975f8e19e3d127a73` |
| 66 | `theorem` | [dvd_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/dvd-iff-source-edition-2.md) | 345 | `result-track:c83ba6bce358fd346bdcbb33cfb452bd5cffdf006bd5b79cfd0c6953b05416dc` |
| 67 | `theorem` | [le_of_dvd](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/le-of-dvd.md) | 358 | `result-track:423711e7e60e7d251d42ebaa3182c8a18192d70df9aa572290076197cdbb5d39` |
| 68 | `theorem` | [mul_div_exact](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/mul-div-exact.md) | 364 | `result-track:d7126daf47e553fa5bfad9d77f7086b81c70ee783a5888201f265d085c09cf87` |
| 69 | `theorem` | [dvd_antisymm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/dvd-antisymm.md) | 369 | `result-track:f3b20eadb6b6a52633067803f4608ce18a947ee801c8e767a4d33faac9299b21` |
| 70 | `theorem` | [dvd_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/dvd-one-iff.md) | 372 | `result-track:9bb399b98f93017a0ca51fc5c5f227858719b15ae4367caad01ee3d99eb05545` |
| 71 | `theorem` | [pos_of_div_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicNamespacedValOfNat.lean/declarations/pos-of-div-pos.md) | 375 | `result-track:3fbd04ef9d3efd000f51fea15c98e8dfc5729cf8f45c152d27f4b8cb0ff56077` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=807f16e0f9b7ac7e4cf313e9fe7f2048f8eb8e38b8ffdc464247cd19cf878513 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant903e79c7a4068ff4b40b67f11e5e7988c07531b31892236a38227ce246635d91.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant903e79c7a4068ff4b40b67f11e5e7988c07531b31892236a38227ce246635d91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
