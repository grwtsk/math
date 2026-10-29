# Verification target: ENat Lattice Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "346d2038a3f6f06b14f216390d10d03c1323b66b",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lattice/Variante90ce0925a89baaf2db7b676203e46f7af1391530ad576d8ec9bc03d8e6ba7c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `346d2038a3f6f06b14f216390d10d03c1323b66b`.

Source path: `GRWTSK/Algebra/GroupTheory/Lattice/Variante90ce0925a89baaf2db7b676203e46f7af1391530ad576d8ec9bc03d8e6ba7c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lattice/Variante90ce0925a89baaf2db7b676203e46f7af1391530ad576d8ec9bc03d8e6ba7c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/instance.md) | 32 | `declaration-track:764b24fb29d8a47eee625383f3c7e8fa5dd1b395527676b6cbcf2f60bad59736` |
| 2 | `lemma` | [iSup_natCast_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/isup-natcast-eq-top.md) | 38 | `result-track:1b7b5efc10806933189446d904a46af460afe7bd235ecbb4918d1b2e287f0c5b` |
| 3 | `lemma` | [iSup_natCast_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/isup-natcast-ne-top.md) | 39 | `result-track:787cad573a0cc488169ca6fdb2a6311874aa0888e7de7ad2dd007a1bdf0badf0` |
| 4 | `lemma` | [iSup_natCast_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/isup-natcast-lt-top.md) | 40 | `result-track:bfaa2027abe37f1ae9fea41e1b55a78688c2af114c2a08ab7d2f506a5e4f45d0` |
| 5 | `lemma` | [iInf_natCast_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/iinf-natcast-eq-top.md) | 41 | `result-track:70dee08730184a99d3b45eafde83f7d042256231321d04902e744a0693605b92` |
| 6 | `lemma` | [iInf_natCast_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/iinf-natcast-ne-top.md) | 42 | `result-track:426be5cc7b6764990e3b7e4d78276a81dfa4bc314a1ab36f74467ac755703382` |
| 7 | `lemma` | [iInf_natCast_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/iinf-natcast-lt-top.md) | 44 | `result-track:005b6646dfe9155cc9d64217fb4e52078c308f4efd7404f407a502c4e11a6680` |
| 8 | `lemma` | [natCast_sSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/natcast-ssup.md) | 53 | `result-track:8d8d45bf53f153aa4739a149cf85d67a77f3ed8fbba8eb62ce970213ac13896c` |
| 9 | `lemma` | [natCast_sInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/natcast-sinf.md) | 57 | `result-track:90e44fc2aea2d0afdebc079003be60980ab48b6fe4b72d0c0af414d5c3b4ea6c` |
| 10 | `lemma` | [natCast_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/natcast-isup.md) | 62 | `result-track:463c649f21a49bb71cdd455da28c7637ecaf7c435e6f89fdedc3419cfb527dec` |
| 11 | `lemma` | [natCast_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/natcast-iinf.md) | 66 | `result-track:81ba8b93f818a1669198043ef8c984da3436d4823875cd5fcf6c0e4813df0bb6` |
| 12 | `lemma` | [iInf_eq_top_of_isEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/iinf-eq-top-of-isempty.md) | 71 | `result-track:25c5ca7e41430ac28679c652d0e3a6441b6031bad1c781240bafc95b01d221bb` |
| 13 | `lemma` | [iInf_eq_natCast_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/iinf-eq-natcast-iff.md) | 74 | `result-track:dedea27cd299ddfa2c1827281bacad4bd1ed3d90fdc31b3f5d72f0226ab83b74` |
| 14 | `lemma` | [iInf_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/iinf-tonat.md) | 81 | `result-track:431b84ff847d987f794f7e875770746b4f3f91b8c6e6e9ebc7dc879c631090bc` |
| 15 | `lemma` | [iInf_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/iinf-eq-zero.md) | 86 | `result-track:d760fb58e1f902fca8ed69124b4e9465fa45fc63b4943ee8d29538b46bd32946` |
| 16 | `lemma` | [sSup_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/ssup-eq-zero-source-edition-2.md) | 91 | `result-track:d6585c504a52db247b54eece1f4fec81572f17d5ff9e755219b036ba94567ba7` |
| 17 | `lemma` | [sInf_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/sinf-eq-zero.md) | 94 | `result-track:5b20a7a9b30e84e2820575555e274664e7a933f1094d6ce03bf268f2642f91f0` |
| 18 | `lemma` | [sSup_eq_zero'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/ssup-eq-zero.md) | 98 | `result-track:9415c19106cf06206d7fa9a1ee83e7cc9907088877140cc85868c2e22bf9b81c` |
| 19 | `lemma` | [iSup_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/isup-eq-zero.md) | 101 | `result-track:e2df553d5e2b0707d9b877f81902b7a5be665e69e639cce0d828eec10d95daa2` |
| 20 | `lemma` | [iSup_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/isup-zero.md) | 102 | `result-track:f91b3985e88047f508032fb784f0eaa163a16a7829dd3bb3082ebdc6d04c3597` |
| 21 | `lemma` | [sSup_eq_top_of_infinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/ssup-eq-top-of-infinite.md) | 104 | `result-track:547f3695e47b0f0b318a14fdeb0bf3619e3107b411c99a5f42f192f39924fa39` |
| 22 | `lemma` | [finite_of_sSup_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/finite-of-ssup-lt-top.md) | 118 | `result-track:a7bfce594c40f81b1158b6f26104b38223f1724762319e7805da08fced90abe3` |
| 23 | `lemma` | [sSup_mem_of_nonempty_of_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/ssup-mem-of-nonempty-of-lt-top.md) | 123 | `result-track:132097d2cdd03fe777f3040ed5c84dbe70b50daf9ed20d4c3aafe7d637cc8b17` |
| 24 | `lemma` | [exists_eq_iSup_of_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/exists-eq-isup-of-lt-top.md) | 126 | `result-track:1c804feafe954a37d6f4e04381a01b9bd2c4e41abbd0ea00594a13ef380b7708` |
| 25 | `lemma` | [exists_eq_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/exists-eq-iinf.md) | 130 | `result-track:28eaa88c754ddcebf7887a953877f83ed31d6a2544195deee85b15bed203ce27` |
| 26 | `lemma` | [exists_eq_iSup₂_of_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/exists-eq-isup-of-lt-top-source-edition-2.md) | 133 | `result-track:6365e3e750466f3873cb3a1ea25db1c5c1570f98b8b4230c76fd48a533b45884` |
| 27 | `lemma` | [iSup_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/isup-natcast.md) | 140 | `result-track:295475524ded2cf7bf581f06696f987ac1b75794da1405fdc3bda328719e0e68` |
| 28 | `lemma` | [mul_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/mul-isup.md) | 143 | `result-track:79142da7588955eaf5cc812446772b8c4da952679a12286686f3567bc67ae380` |
| 29 | `lemma` | [iSup_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/isup-mul.md) | 162 | `result-track:27f31aebe5358ed15dd7113a447d7c4f61ac48536762a861570feedbf1e1504c` |
| 30 | `lemma` | [mul_sSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/mul-ssup.md) | 165 | `result-track:98d3ffc483df54a4d9c55739f59d7962eb17b34a30c2b71742371d3c6522caaf` |
| 31 | `lemma` | [sSup_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/ssup-mul.md) | 168 | `result-track:677298e61f0e3e6a14328426389867958798cc6e0a7565d08d1a71fce4e75c6d` |
| 32 | `lemma` | [mul_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/mul-iinf-source-edition-2.md) | 171 | `result-track:c8d482a7ccae4f66094cb8130beca2b8d4c9e2520349a19490689e68f9e139d5` |
| 33 | `lemma` | [iInf_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/iinf-mul.md) | 177 | `result-track:a57886fb01fb8fb4c3a06beb7a234493de006a2d9f0b9dde8d60ae11c0f03ee5` |
| 34 | `lemma` | [mul_iInf'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/mul-iinf.md) | 181 | `result-track:6e79d2fb9b3707540359f534d0f00b8463a90b29fdd035d7f55e559bbc890fc2` |
| 35 | `lemma` | [iInf_mul'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/iinf-mul-source-edition-2.md) | 188 | `result-track:c6833402a509dbea0460806fff965b31a25b1a69800c5157122089f87349e24f` |
| 36 | `lemma` | [mul_iInf_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/mul-iinf-of-ne.md) | 193 | `result-track:262a88a153e13ba847750889b04022812c2393c586c475374d93ddbd34c3a501` |
| 37 | `lemma` | [iInf_mul_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/iinf-mul-of-ne.md) | 198 | `result-track:87b689fac60c4619e225c4369c89b3cbee429b7879f726330bcd2e99bbadda19` |
| 38 | `lemma` | [add_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/add-isup.md) | 201 | `result-track:ff81ab2a28370bd84da12545102e671dc52d47e189d9c660d5910cc709ad19b3` |
| 39 | `lemma` | [iSup_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/isup-add.md) | 208 | `result-track:a3864569223e56e367107618525d332236e072ac5453cd1197be96e481158005` |
| 40 | `lemma` | [add_biSup'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/add-bisup.md) | 211 | `result-track:1a1155ddaae7d245e9ac0ca59496168d451caf8589a564dcdf0e128d9899e771` |
| 41 | `lemma` | [biSup_add'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/bisup-add-source-edition-2.md) | 216 | `result-track:ff8b5b27403f7ce9fe809faa22e4db864431d75947b9993662eee9679f29779c` |
| 42 | `lemma` | [add_biSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/add-bisup-source-edition-2.md) | 219 | `result-track:eff203759b96b62f151d143cf5a519ebcad1d6c106f305192e2081bc3409d7b9` |
| 43 | `lemma` | [biSup_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/bisup-add.md) | 222 | `result-track:ba7f96d478eaad886789125840989e292001ef86efee7d3cd9c49c5db09a04de` |
| 44 | `lemma` | [add_sSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/add-ssup.md) | 225 | `result-track:495e0443fcbc7e511bf2c23a30448ffbc0ec6f314c0f3034786d3ff82109b0a3` |
| 45 | `lemma` | [sSup_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/ssup-add.md) | 228 | `result-track:d4db4c4b3399ce5cde5a731de458b10537863762426ff179bd946d28d2d18fa5` |
| 46 | `lemma` | [iSup_add_iSup_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/isup-add-isup-le.md) | 231 | `result-track:14ae43d1844cc7cfbd208c5bbff760f64c25cb3c7e4103407dd36fdeac71e57c` |
| 47 | `lemma` | [biSup_add_biSup_le'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/bisup-add-bisup-le-source-edition-2.md) | 234 | `result-track:8f9a85d2745be45c2e15586f1ab187a512ffa3be57785a626214ba37cff9c73f` |
| 48 | `lemma` | [biSup_add_biSup_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/bisup-add-bisup-le.md) | 240 | `result-track:82b163fa90c19d69b753ff58bcf45883c270ff96887bacba295be54f7ca6e975` |
| 49 | `lemma` | [iSup_add_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/isup-add-isup.md) | 244 | `result-track:b0f69b6b7751851568800293f377616d5daa1bc24270a22446d5009d6b5e9964` |
| 50 | `lemma` | [iSup_add_iSup_of_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/isup-add-isup-of-monotone.md) | 252 | `result-track:25ff59295d1a771f348f5ecd9870ec03358212ff9bae4b001e873bdf9e8b0aa7` |
| 51 | `lemma` | [smul_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/smul-isup.md) | 256 | `result-track:00921879041423922cbcd2ab0d99ff229b0c120e2cd0bf716901a34db5889896` |
| 52 | `lemma` | [smul_sSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/smul-ssup.md) | 260 | `result-track:da17b154c8732b0322722501555d09264ad83fafc1bde13b2add12b998f87db8` |
| 53 | `lemma` | [sub_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/sub-isup.md) | 264 | `result-track:e23abcd0c9e8d508404f37f8113474b1a8cf8231bd3a1b9dec1ed47bffa9888a` |
| 54 | `lemma` | [iInf_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/iinf-add.md) | 276 | `result-track:3a6b7588ce0596850a12a351b8d233365611086fa280b47566a609fa05609889` |
| 55 | `theorem` | [sub_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/sub-iinf.md) | 280 | `result-track:1de2f8c7c481d9f4fdfcb0a2e0fca8dc741ad49042e7484ef79371f90d209c86` |
| 56 | `theorem` | [sInf_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/sinf-add.md) | 285 | `result-track:f90527c47d0f9080975e3cd326870d693a00b63fdbbdb71bcfccedd75a12ba21` |
| 57 | `theorem` | [add_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/add-iinf.md) | 287 | `result-track:10c7cf13410c944147490639fa9642758305d898e0d8f0fbf5098e83f24bf057` |
| 58 | `theorem` | [iInf_add_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/iinf-add-iinf.md) | 290 | `result-track:f27e90dbb952e0834e3477215359a8c97389168aad9bd96468f04babb1122ed8` |
| 59 | `lemma` | [iInf_add_iInf_of_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/iinf-add-iinf-of-monotone.md) | 298 | `result-track:a262ed289bafe8ad89ae88dcd2bb1e3b9ff803bd1c0b642f15a3f58f75afd7c1` |
| 60 | `lemma` | [add_iInf₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/add-iinf-source-edition-2.md) | 302 | `result-track:e11918508f434e130e7bb50971d8a82c47d8ba400ca5c812fe32fab06e004281` |
| 61 | `lemma` | [iInf₂_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/iinf-add-source-edition-2.md) | 306 | `result-track:4d0c3064a432be9848ffc63a36d7237597d4facc1c2174e0c3e4e68d640ef8fb` |
| 62 | `lemma` | [add_sInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/add-sinf.md) | 310 | `result-track:98733bd0cfe6fa906456000fedc2083b5c9a94f35dbba2e7f187e82b9819c752` |
| 63 | `lemma` | [le_iInf_add_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/le-iinf-add-iinf.md) | 315 | `result-track:b747bd03dc08278bc95fdea72240854b0e5bcea0a1c6a4adeb55548ead32f5ba` |
| 64 | `lemma` | [le_iInf₂_add_iInf₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticePublic.lean/declarations/le-iinf-add-iinf-source-edition-2.md) | 319 | `result-track:c41912a5e7ba1a8017123764f2c9a5470f5656ca2cbbb659253252a5401437a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a6b9fd067f200e4e31dcce63054fb25d92f555f57cf3b66af2e3eb202b46d29 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Lattice/Variante90ce0925a89baaf2db7b676203e46f7af1391530ad576d8ec9bc03d8e6ba7c1.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Lattice/Variante90ce0925a89baaf2db7b676203e46f7af1391530ad576d8ec9bc03d8e6ba7c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
