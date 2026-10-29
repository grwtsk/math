# Verification target: Lattice Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1b5076d829a1f2e6f2c7a66a7f5650bef2a44a9",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantb76ae820f80734bad5b0be32d5590d05d42b0c64ae1fa96882a266e4b1141d69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1b5076d829a1f2e6f2c7a66a7f5650bef2a44a9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantb76ae820f80734bad5b0be32d5590d05d42b0c64ae1fa96882a266e4b1141d69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantb76ae820f80734bad5b0be32d5590d05d42b0c64ae1fa96882a266e4b1141d69.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/instance-source-edition-7.md) | 60 | `declaration-track:e07b0b5c59cd5ff7a896ad4ee670155b0f69b328e4c185f0671f6dfc6005b635` |
| 2 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/instance.md) | 64 | `declaration-track:252768153b8f287279fd24ac57ecd1d404944077811c0b6e0a288cb31a564c7b` |
| 3 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/instance-source-edition-4.md) | 67 | `declaration-track:b121898cae87590a21864b493d153626ab3795e593212d77d2944daa13920455` |
| 4 | `theorem` | [sup_eq_union'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/sup-eq-union-source-edition-2.md) | 78 | `result-track:f62408d308c832c4230e21769eab2165c9029b6ff3b33deb962656d4f40a68e5` |
| 5 | `theorem` | [sup_eq_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/sup-eq-union.md) | 82 | `result-track:b97af81a96c21fbf0c673269a228754a609e7f9ccc6c3a783bc1b7cf7e85195f` |
| 6 | `theorem` | [inf_eq_inter'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inf-eq-inter-source-edition-2.md) | 86 | `result-track:d701c7b2c875c58c52812d44193363bb53143388cfa4cf9b79313d2248261a7f` |
| 7 | `theorem` | [inf_eq_inter](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inf-eq-inter.md) | 90 | `result-track:71c9b6f9b03c131cf1383dc19536042224c5b995a1cc5b238c0210cd93791022` |
| 8 | `theorem` | [union_val_nd](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-val-nd.md) | 95 | `result-track:99b1c29b0661b7f1ffa416f11dc6eae162c3497b23dbbe5608988339ac39089d` |
| 9 | `theorem` | [union_val](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-val.md) | 99 | `result-track:02a3517da9a944146e712c3d13fb3844c0aa817b82b3306a857765eca429254e` |
| 10 | `theorem` | [mem_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/mem-union.md) | 103 | `result-track:73c67cea18be984dfac2483e70dd7499ee7e89bf653891cc5fa8c36d445a289c` |
| 11 | `theorem` | [mem_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/mem-union-left.md) | 106 | `result-track:742ea605599c210e8f2cda84edcbea3c92e39c48d6639c230b452285361463e2` |
| 12 | `theorem` | [mem_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/mem-union-right.md) | 109 | `result-track:18f4dbe8f792a4a090c804fad43a1a398d0df55eb09df05b8f8c824dff188b0b` |
| 13 | `theorem` | [forall_mem_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/forall-mem-union.md) | 112 | `result-track:0f47635a46b0c6a8e02470e2d4e2320b85bef5f7b2081a9ebb0ad373a1026d79` |
| 14 | `theorem` | [notMem_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/notmem-union.md) | 115 | `result-track:e04b5f34d08cf983d96214c80dfb7a3e54462e46e5f69a19e090bf835e48bc17` |
| 15 | `theorem` | [coe_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/coe-union.md) | 118 | `result-track:24c54f000f33708b28e20757f493918ef396daaf10a8f2c304d2eb5242a863a8` |
| 16 | `theorem` | [union_subset](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-subset.md) | 121 | `result-track:f7f78e708731207d21a22c7eb4ad853c2cd73f48263bb3f2f01c193fd52e828b` |
| 17 | `lemma` | [subset_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/subset-union-left.md) | 124 | `result-track:abcbd40d783c042e93e465f5496f940286384e8cc8fbc04af9973296f76fa726` |
| 18 | `lemma` | [subset_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/subset-union-right.md) | 125 | `result-track:e3bcedc53bcf2827a816e9a3a9725fbe2ceb4fcd09cf6156531367fce5843714` |
| 19 | `theorem` | [union_subset_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-subset-union.md) | 128 | `result-track:ab574a36635c5220b12bebcac50d6b67da4f216d9c374ff6afbc9fcb3fba006e` |
| 20 | `theorem` | [union_subset_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-subset-union-left.md) | 131 | `result-track:203974c6d59d228ba82ff2523fb2f665eccb9ef4e8a40dc9889285e587882975` |
| 21 | `theorem` | [union_subset_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-subset-union-right.md) | 134 | `result-track:6498872d7b96faadf921252a09b1c21a691d59f0b920db810156c43585ef50a7` |
| 22 | `theorem` | [union_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-comm.md) | 137 | `result-track:03600118998d3a3e653c63a32ba000cdafe39a3a3132277528c521f934dd9aa1` |
| 23 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/instance-source-edition-6.md) | 139 | `declaration-track:dd2c7a9b56b3bae047d0649e81433d7ab96bff30bf679ad59023e16cd4ce3ac3` |
| 24 | `theorem` | [union_assoc](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-assoc.md) | 143 | `result-track:4b623c28c7707c1da4127b637fab63b04cecba457f486a85d1d6b2b946a8610e` |
| 25 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/instance-source-edition-2.md) | 145 | `declaration-track:3ab9302ccc0629de8e5ddac3309e6f6d99b467980756d14de115a09270461790` |
| 26 | `theorem` | [union_idempotent](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-idempotent.md) | 149 | `result-track:ee1258e95ad62643597ba5581498715b552dc189f9bbe48f649848d03351759a` |
| 27 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/instance-source-edition-3.md) | 151 | `declaration-track:ae7c945334456c29d350dd2a2dad0cef71c0a989ea955405517c1fbe1601b457` |
| 28 | `theorem` | [union_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-subset-left.md) | 154 | `result-track:5eec03904cf0c22d3fb9af913cd65590883c23073ac2838bf7fc7af97e1726a1` |
| 29 | `theorem` | [union_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-subset-right.md) | 157 | `result-track:593cefc0c2a09c984ad2b77b03a08a9a06e5830a4769c9ed2ecdd1c2e7569299` |
| 30 | `theorem` | [union_left_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-left-comm.md) | 160 | `result-track:245f942cef6f7adb787914ccd68c3789976cd5354faa8044a67bb13b8e730273` |
| 31 | `theorem` | [union_right_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-right-comm.md) | 163 | `result-track:0178c6b85f40413e1806591e4d73568c4d6a839be158159220352fc1e69b5b92` |
| 32 | `theorem` | [union_self](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-self.md) | 166 | `result-track:e180d9ad73bafe9b91c0e65b8b557223f2d2bd3f0fe2756f011f55ce4605023b` |
| 33 | `lemma` | [union_eq_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-eq-left.md) | 169 | `result-track:035c67f93c7604cf55422b77458ff515c7fe378cc00af0924b72e7b67ae810f5` |
| 34 | `lemma` | [left_eq_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/left-eq-union.md) | 171 | `result-track:80009f8f57b5a1da38e28c6cc3dda188e5a499630cc1e7818d6c70a671ed3009` |
| 35 | `lemma` | [union_eq_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-eq-right.md) | 173 | `result-track:26ff9bbda119e5caa3dc8a5148dfaa0b013d314efb0809acc1b4640006577ac5` |
| 36 | `lemma` | [right_eq_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/right-eq-union.md) | 175 | `result-track:2b3bb5e5b21930adba5820e2187fed85e2e40d1072929ff98ed96dde3093ccc4` |
| 37 | `theorem` | [union_congr_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-congr-left.md) | 177 | `result-track:fa1c83b1eef1d19fe7c423746dfb7251ae06aed12b52c67b0d2e349ad498688a` |
| 38 | `theorem` | [union_congr_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-congr-right.md) | 180 | `result-track:07733b7b26ede36a9b0558aa3222fe46f4b607914e76c836e8940962d7da5928` |
| 39 | `theorem` | [union_eq_union_iff_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-eq-union-iff-left.md) | 183 | `result-track:7da8f52a32d281ae6798915e552705c205a3f3a91f98b22055e0a03a003077d2` |
| 40 | `theorem` | [union_eq_union_iff_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-eq-union-iff-right.md) | 186 | `result-track:ca5d2165f55228c508071f361b840455bd5d204846c9c39d371a6b9220641eb0` |
| 41 | `theorem` | [inter_val_nd](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-val-nd.md) | 189 | `result-track:9ee4ad37286232c6593338c8a4f81d9a3c01dbb157151d98f473c8017f062681` |
| 42 | `theorem` | [inter_val](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-val.md) | 193 | `result-track:5910b5d5cddf48cc53dcb4cfe400d94b16b0543820f45719734dc772540cea24` |
| 43 | `theorem` | [mem_inter](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/mem-inter.md) | 197 | `result-track:8d969e6fc2028a772a95ba6447dcd3fcf1a711b2a79e6e4fbd30da9027d47372` |
| 44 | `theorem` | [mem_of_mem_inter_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/mem-of-mem-inter-left.md) | 200 | `result-track:dee5d53db69b31f279c2a64a0c42fba394c779e1ed3edf05b3e65d930a3f608d` |
| 45 | `theorem` | [mem_of_mem_inter_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/mem-of-mem-inter-right.md) | 203 | `result-track:6abf9beaf8ab8765d9b7a4ca64dff54435f5b7fd09931b33c45c94fac5c929fb` |
| 46 | `theorem` | [mem_inter_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/mem-inter-of-mem.md) | 206 | `result-track:c6de7fafd14b825e6042ab39d235f65bc4635488335deb1d0b85f4ea1d0cd84f` |
| 47 | `lemma` | [inter_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-subset-left.md) | 209 | `result-track:3ff5ae4ef44fcdb9240431a215990cf962c342881e7f12483d97c999dde4dea1` |
| 48 | `lemma` | [inter_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-subset-right.md) | 210 | `result-track:077f4fea4bc2bcf682364ad6c70f82f25ee8dc70d08a89a17f0a9c64ee2dc58f` |
| 49 | `theorem` | [subset_inter](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/subset-inter.md) | 212 | `result-track:f653075af5ce75ef34dcdd5000169b866fff580ee559129b41915df9721e014c` |
| 50 | `theorem` | [coe_inter](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/coe-inter.md) | 215 | `result-track:112f30e960aaf224c41c53fcaf6399b4ce5866092b3938a2adc084b6464b9770` |
| 51 | `theorem` | [union_inter_cancel_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-inter-cancel-left.md) | 219 | `result-track:515ad3926424a98ade5e027ee6c348bd03ce78d2c822e5d03978efd3fdea0834` |
| 52 | `theorem` | [union_inter_cancel_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-inter-cancel-right.md) | 222 | `result-track:f40bede7491f6962abd19b30da6c9441d2fbeca0ef8f155640b4a0f71e267ac5` |
| 53 | `theorem` | [inter_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-comm.md) | 224 | `result-track:a5384760b792d038c2732cc72d2eb544e7cd65aad765d10869967138056ae374` |
| 54 | `theorem` | [inter_assoc](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-assoc.md) | 227 | `result-track:3fae0a9e273b7718020ae68b748292e62067bfaa68ae225dd4f76f556f4fd2db` |
| 55 | `theorem` | [inter_left_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-left-comm.md) | 229 | `result-track:5a1290c37fe741f379a729a352ffe84d9fc275a80f6331a02b19f676f5c7dc9f` |
| 56 | `theorem` | [inter_right_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-right-comm.md) | 231 | `result-track:0c3d589ef7723585bfa07003f65d96c6844576306cfdfda18e15d5a83a13f6c0` |
| 57 | `theorem` | [inter_self](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-self.md) | 234 | `result-track:a2b086a117c3ebc750db479e1e542b3cd7af11cfdd4843b1d1f98eb469f6d51f` |
| 58 | `theorem` | [inter_union_self](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-union-self.md) | 238 | `result-track:c5c6f13a9c39b645f14b4a5a89c5ca9bf542b5426c4372b4e86d3175fac8ce61` |
| 59 | `theorem` | [inter_subset_inter](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-subset-inter.md) | 242 | `result-track:b11b82c90b4e32bc092a91d6b3aff16097f64f12777b5fbab1e99889ee25b7b9` |
| 60 | `theorem` | [inter_subset_inter_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-subset-inter-left.md) | 245 | `result-track:9ff44976e265bf60936e338e9c30052e4f4ea3fc6259498345ae9dd1b982c057` |
| 61 | `theorem` | [inter_subset_inter_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-subset-inter-right.md) | 248 | `result-track:dacb81fcedd77464fbdb7874875f7fdfb46f1a48f6d8c5b8584da393cd9a45b4` |
| 62 | `theorem` | [inter_subset_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-subset-union.md) | 251 | `result-track:f4eb4964c3eef1067c0d97f225e3f71517d0fa0c4016653cfac68a6844361cc5` |
| 63 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/instance-source-edition-5.md) | 254 | `declaration-track:cf19842c1363457c9920c30e06eea49477f2e3354815ece859cc4cc766f65460` |
| 64 | `theorem` | [union_left_idem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-left-idem.md) | 261 | `result-track:3ff1c20790276f3ed653217ae9b241251c6c182522e6910ca70c9fb3d4327cdf` |
| 65 | `theorem` | [union_right_idem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-right-idem.md) | 263 | `result-track:e6881fb879ca960745669baaac02797beca9794af17656c82e09ce58ed39ff7b` |
| 66 | `theorem` | [inter_left_idem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-left-idem.md) | 266 | `result-track:ce3f55367d4b49b78b873757af4570c07a2bd5bd84601d512cf4c90e6557c4ed` |
| 67 | `theorem` | [inter_right_idem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-right-idem.md) | 268 | `result-track:50d6d853e58534338e5b943d597b627f76284248f09f454bcc8fdf86797996b5` |
| 68 | `theorem` | [inter_union_distrib_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-union-distrib-left.md) | 270 | `result-track:db0ec4ea137367e8d4b5c1455dc935172dcd81b36f20818cb5da11061f6f3c99` |
| 69 | `theorem` | [union_inter_distrib_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-inter-distrib-right.md) | 273 | `result-track:d28e813778d176524361d9bf095c781881c13a9081166bafa6f5fc0913061542` |
| 70 | `theorem` | [union_inter_distrib_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-inter-distrib-left.md) | 276 | `result-track:ee48ecf9d0ee29720b080b9d52d0fcdf75b4b1453b96bb43e66c9d0ef23ebff7` |
| 71 | `theorem` | [inter_union_distrib_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-union-distrib-right.md) | 279 | `result-track:7b6c88d0ae98b8444f23df135bbd247509f396dd28b9e6e3dfa10ed9a613db4c` |
| 72 | `theorem` | [union_union_distrib_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-union-distrib-left.md) | 282 | `result-track:3466ffa7ce65199f491a68bb77a2e11df3bb645de2029b4e92841ff00a8eece7` |
| 73 | `theorem` | [union_union_distrib_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-union-distrib-right.md) | 285 | `result-track:ac385c3fdcdf9bccc8d0a219143acb644ecf124e587e655be50c44f4e035e6e0` |
| 74 | `theorem` | [inter_inter_distrib_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-inter-distrib-left.md) | 288 | `result-track:6b16d79b48ae5c164a47b61431eeadf2a3fbbf1f29275a29237143458eabdae6` |
| 75 | `theorem` | [inter_inter_distrib_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-inter-distrib-right.md) | 291 | `result-track:4284c4c32527881a836169fddd6fbe7208b9452ff72ea8d7a45523b8fdceffb3` |
| 76 | `theorem` | [union_union_union_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-union-union-comm.md) | 294 | `result-track:cdfd567553e86a292fc52527777c393aa73a1247129b106ac8f957f8d781abba` |
| 77 | `theorem` | [inter_inter_inter_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-inter-inter-comm.md) | 297 | `result-track:b42a6fb184f7b6ab8c6d1d6daba7ee918c279d491918772782f5a2a5efb919b3` |
| 78 | `theorem` | [union_subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/union-subset-iff.md) | 300 | `result-track:c6fab641eaa4c0a4488af33e15a6e166c4c1ad2d0ff514f95aeb56b744d4fe9e` |
| 79 | `theorem` | [subset_inter_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/subset-inter-iff.md) | 303 | `result-track:f5c5cb7a53d7cc3854c2271e73a44d8f7d497e380cadca86cdffd6bbbe73e99a` |
| 80 | `lemma` | [inter_eq_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-eq-left.md) | 306 | `result-track:dd92fb0aa9c9d119e1940299c8ff720ba18cc19222f62bfe488775f4b143ad5b` |
| 81 | `lemma` | [inter_eq_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-eq-right.md) | 308 | `result-track:5afb4c197ee13871f1c6d7fe5b58e4c8e423c077cfbb1794c768a86f7521b6d6` |
| 82 | `theorem` | [inter_congr_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-congr-left.md) | 310 | `result-track:401168b41e09abaf44918b040eae4b5e5cc33e97f0a25a5689ef1b005860b2f5` |
| 83 | `theorem` | [inter_congr_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-congr-right.md) | 313 | `result-track:844a1f3fa6f1fa5ad3716868f7592679d8c9c1bfcc3cff56437b6f2b7c82dbb1` |
| 84 | `theorem` | [inter_eq_inter_iff_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-eq-inter-iff-left.md) | 316 | `result-track:003ba2fd2c073d4a7f225ef461ebe3166d86082961210c14309e4ad255e95b7e` |
| 85 | `theorem` | [inter_eq_inter_iff_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-eq-inter-iff-right.md) | 319 | `result-track:70377c16235b79cc26e841476fac071ca089dfdac18ff2a2276a963f51131ee5` |
| 86 | `theorem` | [ite_subset_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/ite-subset-union.md) | 322 | `result-track:62a9f51d24c981483f896430f5942ab5e62ee904942a3d3263dc0d116852d374` |
| 87 | `theorem` | [inter_subset_ite](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasicPublic.lean/declarations/inter-subset-ite.md) | 325 | `result-track:2245f7abdc31d7c755f45691bf0031e69522dde7e74b196e7fa7fb7460a0f7b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35ba626826ca12aafab0f18018737b06b2e9f576b96dc6ae3b53f10354406119 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantb76ae820f80734bad5b0be32d5590d05d42b0c64ae1fa96882a266e4b1141d69.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variantb76ae820f80734bad5b0be32d5590d05d42b0c64ae1fa96882a266e4b1141d69.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
