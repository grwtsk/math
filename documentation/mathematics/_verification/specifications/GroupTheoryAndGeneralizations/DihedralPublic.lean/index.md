# Verification target: Dihedral Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60015188ea04b938dd09b25d191a6ba4bc08fab9",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Dihedral/Variant8c16fe24fd0c5695251954802005738cc223a0a3438e8b41f626e60bc0763316.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60015188ea04b938dd09b25d191a6ba4bc08fab9`.

Source path: `GRWTSK/Algebra/GroupTheory/Dihedral/Variant8c16fe24fd0c5695251954802005738cc223a0a3438e8b41f626e60bc0763316.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Dihedral/Variant8c16fe24fd0c5695251954802005738cc223a0a3438e8b41f626e60bc0763316.lean.json)

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
| 1 | `inductive` | [DihedralGroup](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/dihedralgroup.md) | 33 | `declaration-track:e0fbbf5669b17d162bdbf30e49155226c41302f77d679781f3f0fd34002fbc4e` |
| 2 | `def` | [mul](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/mul.md) | 45 | `declaration-track:d76a31454b5c295cfb90b79338f0dd8d11f4771f7f0c3f92240a0c7f3e5763c3` |
| 3 | `def` | [one](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/one.md) | 54 | `declaration-track:aaf27730986a0050853fc266fac8c4bdb6a16a031cb6ae5d6334026cbe086ae0` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/instance-source-edition-6.md) | 59 | `declaration-track:ef2183a5461981d052da9e79e898b15d94836d7e36283fec5fbcb23e23a5ab41` |
| 5 | `def` | [inv](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/inv.md) | 65 | `declaration-track:512fc208eff7e320be5bf6d1df478bfae2c960cf2e103a1735e465cd3a26a194` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/instance.md) | 73 | `declaration-track:0b04dee9a45d191d55b9ec766121e5546e8589b0f33e4c008dccdafff4028e12` |
| 7 | `theorem` | [r_mul_r](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/r-mul-r.md) | 92 | `result-track:08b52d9e11ac8059c25bf2ea099fb38c45d4eae817681c4ab78d251008915413` |
| 8 | `theorem` | [r_mul_sr](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/r-mul-sr.md) | 96 | `result-track:9558ece0f3686a1b6bd88cfd521b27a9af5a67ea652bbd53b3d5185ca7f3251d` |
| 9 | `theorem` | [sr_mul_r](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/sr-mul-r.md) | 100 | `result-track:cb2b2bd613ff13ae466b7ea74706b91fc8e304d2df6f3ae90c77da334ba09421` |
| 10 | `theorem` | [sr_mul_sr](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/sr-mul-sr.md) | 104 | `result-track:5e48cc37fd4c808ca306c07900261d0a2c31ab74e559d065b6c22b384bfb638d` |
| 11 | `theorem` | [inv_r](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/inv-r.md) | 108 | `result-track:c1586ad41dcd62475abeb68f8976f1d8258420e2da761300eeac0405ebb039fa` |
| 12 | `theorem` | [inv_sr](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/inv-sr.md) | 112 | `result-track:01aa0dbac43250c2690cdbaab67782471d84f35f8396c587636d0996a2b58d64` |
| 13 | `theorem` | [r_zero](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/r-zero.md) | 116 | `result-track:cbd6233de44a9cb891eb71b4499775a80e1bad6f40593c59d28b9eb81fab8559` |
| 14 | `theorem` | [one_def](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/one-def.md) | 119 | `result-track:6d9e9bc03ab14496c0f5a04ec96adb41353192c8f295cd3ee5f6672bfae1663f` |
| 15 | `theorem` | [r_pow](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/r-pow.md) | 123 | `result-track:13bbb31e62dfcb81d2eeb0d0e60b3ade9c4875976e320856af2e7c95111edef3` |
| 16 | `theorem` | [r_zpow](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/r-zpow.md) | 130 | `result-track:c0ec5009243c71a680ca9c2ab3ca4a4d98f8678c9a446b2ed3a85c6e4bab3421` |
| 17 | `def` | [equivSum](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/equivsum.md) | 135 | `declaration-track:4faf146f77cf6a95c7ede0167a64aec506d3c39f26336937384c5af3595eb39b` |
| 18 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/instance-source-edition-3.md) | 147 | `declaration-track:41c56ed6d3338fbd30637e0f2e254c240383aab3832532558086ef1a23f8e480` |
| 19 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/instance-source-edition-2.md) | 150 | `declaration-track:2ff19c338f5e6244e7566866f1b09dd1a28d3118f2e30dcc7fb6d43377f177cc` |
| 20 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/instance-source-edition-4.md) | 153 | `declaration-track:4ae5f2a028269af0b49c5bb1f1d1196159cd7b487c70bc3e3ef3469a42b9b858` |
| 21 | `theorem` | [card](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/card.md) | 158 | `result-track:b0ed54b3a61190bcff6950fdea498983c487cbeb2c0d2d64170e767af7460046` |
| 22 | `theorem` | [nat_card](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/nat-card.md) | 161 | `result-track:c198d6e75eca6676a9b5a90a60ba000803837f057a5b5d422e703d4313c54701` |
| 23 | `theorem` | [r_one_pow](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/r-one-pow.md) | 166 | `result-track:b3a87d44dbffccbdd2cc44eeee12d8aff06974f2a2d869ff0eedc47901844807` |
| 24 | `theorem` | [r_one_zpow](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/r-one-zpow.md) | 169 | `result-track:7443be74f1425ee089ba0ffcfedea18e99dcfe1569ae2ca9b650e88eaa491374` |
| 25 | `theorem` | [r_one_pow_n](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/r-one-pow-n.md) | 172 | `result-track:891d9e0993e47b768a4f7b8e7b0318b989776f8f6b199b90a0f10cfdc3ebbfb3` |
| 26 | `theorem` | [sr_mul_self](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/sr-mul-self.md) | 175 | `result-track:100cb93ff90878b0ab6c25573d8bd3594ce9edf8f562d2238d4e931b29623258` |
| 27 | `theorem` | [orderOf_sr](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/orderof-sr.md) | 181 | `result-track:b15044863094c967f10f66f4d5cfadf5f02d298d7999523f3d5b6a0d7b79e0e8` |
| 28 | `theorem` | [orderOf_r_one](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/orderof-r-one.md) | 189 | `result-track:1aa1a2871ee1ee8cfff70e30f753c9775a8cf78df673e3416865f45221ce0487` |
| 29 | `theorem` | [orderOf_r](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/orderof-r.md) | 207 | `result-track:5831bb13367e76e5ad5f8a34705febecf3a00778539161ce078c25c674ba86e5` |
| 30 | `theorem` | [exponent](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/exponent.md) | 211 | `result-track:9fa2300b5e09c7f5ed469d0f943d270bb3c55f23c843681acbaa6a5334a472c9` |
| 31 | `lemma` | [not_commutative](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/not-commutative.md) | 228 | `result-track:b55d09200c3724a70dac7a1952032b6434d18d9095b1f012ade30350daee9e71` |
| 32 | `lemma` | [commutative_iff](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/commutative-iff.md) | 236 | `result-track:c7a716b4212198e35d642dc60e45c738b02941cf21e8a7051749f93583e1cdca` |
| 33 | `lemma` | [not_isCyclic](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/not-iscyclic.md) | 240 | `result-track:58aa8b6bfa10c2a06d30b84149a070f529ca47e7b85bfe315db372fee58c900d` |
| 34 | `lemma` | [isCyclic_iff](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/iscyclic-iff.md) | 245 | `result-track:1ef5ae60e7cc65b31a73887fa8f221167cbb498b3e43f8fbe190fd299e50ada5` |
| 35 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/instance-source-edition-5.md) | 249 | `declaration-track:a286c11736602fce2b780ff1a8d1d151a0a978bd7f5ffe0139ea3fbd2833fb28` |
| 36 | `def` | [oddCommuteEquiv](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/oddcommuteequiv.md) | 257 | `declaration-track:222a1d6961d6f3d21f63765004db3bd331c63b836b3ae3c9f7b5a83cffd45eb4` |
| 37 | `lemma` | [card_commute_odd](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/card-commute-odd.md) | 292 | `result-track:1086aad4bc9072934bbe0686e82756400e06bd07151acc81fc17453ecdde8a57` |
| 38 | `lemma` | [card_conjClasses_odd](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/card-conjclasses-odd.md) | 298 | `result-track:d1553cb7f5d13636d15dc721ab46f0943169f81e4c242616322b87cf712286cf` |
| 39 | `theorem` | [center_eq_bot_of_odd_ne_one](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/center-eq-bot-of-odd-ne-one.md) | 304 | `result-track:112690e68f58c2e5c86a38b10b2bfd5d536b4356f2dc136be97fe4669ff455f9` |
| 40 | `theorem` | [center_eq_closure_of_even_ne_two](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/center-eq-closure-of-even-ne-two.md) | 317 | `result-track:d8582330f117d4268e50f09e34b6b30d4e393e52597adeed06af5725ef1b42b3` |
| 41 | `theorem` | [center_eq_bot_of_zero](../../../../GroupTheoryAndGeneralizations/DihedralPublic.lean/declarations/center-eq-bot-of-zero.md) | 350 | `result-track:b33dca6cc7bdfec903332a5d2253b496ac120cd4b083a2946dc54a235d32f5dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf9be69a0a0a23ddb9d44c2401af60aad2698e6147948c88d4fe1b10e02bea36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Dihedral/Variant8c16fe24fd0c5695251954802005738cc223a0a3438e8b41f626e60bc0763316.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Dihedral/Variant8c16fe24fd0c5695251954802005738cc223a0a3438e8b41f626e60bc0763316.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
