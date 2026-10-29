# Verification target: ENat Lattice Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d327f658e8c4777db426ff4a74dcbee212d5ea2",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lattice/Variant4cd81e01536e05989d6e696aa1ff9fe520a4b83ea2310c3a8eefc7ff026e66b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d327f658e8c4777db426ff4a74dcbee212d5ea2`.

Source path: `GRWTSK/Algebra/GroupTheory/Lattice/Variant4cd81e01536e05989d6e696aa1ff9fe520a4b83ea2310c3a8eefc7ff026e66b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lattice/Variant4cd81e01536e05989d6e696aa1ff9fe520a4b83ea2310c3a8eefc7ff026e66b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/instance.md) | 28 | `declaration-track:1f9032def77f80af96fe48ceb317a91172290c5a954d20c674f30e71f5fbab0a` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/instance-source-edition-2.md) | 31 | `declaration-track:ce72e9bb8cbcd29269d151f057a36bac7c47583023ab5d52ac08681cd19a50f2` |
| 3 | `lemma` | [iSup_coe_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/isup-coe-eq-top.md) | 37 | `result-track:97e396ff2335eaabe57a111cc7a50501077e707f54eedb66182c6b3ee3e44d60` |
| 4 | `lemma` | [iSup_coe_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/isup-coe-ne-top.md) | 38 | `result-track:9135ca1575dd202d68302a1f213430b1f877c433f71108cf4cae71529e831786` |
| 5 | `lemma` | [iSup_coe_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/isup-coe-lt-top.md) | 39 | `result-track:2887cbfe1dd82b139457f6f3315555b8fa1de854af348d5ae52e8d9efc8c0d9c` |
| 6 | `lemma` | [iInf_coe_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/iinf-coe-eq-top.md) | 40 | `result-track:aef9336afc702cbdef9a1f693091b2f4b29f0eeb9c859000d8599bb1b82314ec` |
| 7 | `lemma` | [iInf_coe_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/iinf-coe-ne-top.md) | 41 | `result-track:c880de55aac56e1a937c46e43dde41f63cda13931b5e9d029ada6127612f68d3` |
| 8 | `lemma` | [iInf_coe_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/iinf-coe-lt-top.md) | 43 | `result-track:e7d36b528780b8f0ad2ac157ae7268a75fb87118027cf678aa33b8ed914f100d` |
| 9 | `lemma` | [coe_sSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/coe-ssup.md) | 45 | `result-track:7ab2cef926f78a4ae08b32f47fdcb4a43b14339760e51164b90c87a335d645bc` |
| 10 | `lemma` | [coe_sInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/coe-sinf.md) | 47 | `result-track:c01c4b18c013f51c4835a17e6c3ba869c997b5663e39255a5ad1e04dfa29a277` |
| 11 | `lemma` | [coe_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/coe-isup.md) | 50 | `result-track:5eec8d323cbb6cc7b877661091c446bd74d0e10359a7beaaa4d63f4a674d074c` |
| 12 | `lemma` | [coe_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/coe-iinf.md) | 52 | `result-track:1a3bb504d518b99dfb293fab923ee4bd703682395e31ffc368a1f1986f300b9a` |
| 13 | `lemma` | [iInf_eq_top_of_isEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/iinf-eq-top-of-isempty.md) | 56 | `result-track:f9cad7032819d85f106c81e92b0df3d51d801500d424f156b1fa2c74bfcc2b0c` |
| 14 | `lemma` | [iInf_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/iinf-tonat.md) | 59 | `result-track:93eae8b259908d4edb70e1966ff9371c611afbc81eb4e7a9463515154aa4d548` |
| 15 | `lemma` | [iInf_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/iinf-eq-zero.md) | 64 | `result-track:824bb206f31a2012c26a4a78ddb6ba9460266b2709dc49bc5ba37bd9f8a39f51` |
| 16 | `lemma` | [sSup_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/ssup-eq-zero.md) | 69 | `result-track:56c25715966d9f615362a5df53a068d8d747845b7815ee90a52776ef6f4b81c1` |
| 17 | `lemma` | [sInf_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/sinf-eq-zero.md) | 72 | `result-track:bb05a45659d4d9d6a4090c126af5ae8383ac76ec9d8c6ebfefb121d8c5a4b409` |
| 18 | `lemma` | [sSup_eq_zero'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/ssup-eq-zero-source-edition-2.md) | 76 | `result-track:fc79fb3605901c77d3ea6c6c88f84c8cef39eda64a753cf3a559a59db331976f` |
| 19 | `lemma` | [iSup_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/isup-eq-zero.md) | 79 | `result-track:477e28e7b6418697d6bcc2fbc65271345a2a57581501f13f98d4c26e0fe32f4d` |
| 20 | `lemma` | [iSup_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/isup-zero.md) | 80 | `result-track:0ab7e659f06981e327e9d273bdeaf053c102a3588bebfd7d682f2abcbceab9af` |
| 21 | `lemma` | [sSup_eq_top_of_infinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/ssup-eq-top-of-infinite.md) | 82 | `result-track:e1e8a695789671751ef0d3c35675794fd226669e86ec3d0f0b61167296e78a3a` |
| 22 | `lemma` | [finite_of_sSup_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/finite-of-ssup-lt-top.md) | 97 | `result-track:8e5f08d0281cec10039074bed825e4b197850145881618a67a49d1ddfb08db83` |
| 23 | `lemma` | [sSup_mem_of_nonempty_of_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/ssup-mem-of-nonempty-of-lt-top.md) | 102 | `result-track:2fcb62fa7008a05828c5a22d040c7033b5a86ce9bbcd9d8f499cf72d2a66249a` |
| 24 | `lemma` | [exists_eq_iSup_of_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/exists-eq-isup-of-lt-top-source-edition-2.md) | 105 | `result-track:e8ba1be147d737a7213222f933e8f8471f4e66958cdf1ccee2571c59cfdad5d6` |
| 25 | `lemma` | [exists_eq_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/exists-eq-iinf.md) | 109 | `result-track:ea5fadcd4e67cb040bfd5019375aafbdb88b3c08c76ca0a44d133b4d1b3cc902` |
| 26 | `lemma` | [exists_eq_iSup₂_of_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/exists-eq-isup-of-lt-top.md) | 112 | `result-track:12dd6f9f0222ca91afa9a438d64caf3591f9ba308011cab4028ed85c9618a30d` |
| 27 | `lemma` | [iSup_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/isup-natcast.md) | 119 | `result-track:cdc3277476652f596fc93d3ad8df3d146177f26c5191ae79a5d8f510313ec71c` |
| 28 | `lemma` | [mul_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/mul-isup.md) | 122 | `result-track:af99d6e33a6385e3669f928b7cb72013165a0bf2c599c8e2ea5a3ff7efe9b433` |
| 29 | `lemma` | [iSup_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/isup-mul.md) | 141 | `result-track:f186b21054512e93641254d71b92e254d03f4dc9a8bf5033a365b3d8acc86f28` |
| 30 | `lemma` | [mul_sSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/mul-ssup.md) | 144 | `result-track:ecc8582aa3d937562ab28fdd38da843011be234ec93b1bcb839916e50a605fbf` |
| 31 | `lemma` | [sSup_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/ssup-mul.md) | 147 | `result-track:74d3cdcea6cbfbd6544d3e12aad2254d5bd2cf7aab5ffe57e06cdca142bfb20a` |
| 32 | `lemma` | [mul_iInf](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/mul-iinf-source-edition-2.md) | 150 | `result-track:9bb312848410418aad6c9d2075566bad877c6653716b51602e0140f23457a020` |
| 33 | `lemma` | [iInf_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/iinf-mul-source-edition-2.md) | 156 | `result-track:a9ff6c739cdf16951eba79360fdc6bc4a587de693413cf694f93fc3d7e80c305` |
| 34 | `lemma` | [mul_iInf'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/mul-iinf.md) | 160 | `result-track:3dda0dd925065766017a72ded7303ed86bd6cc931bc941dcf732d3602bc1e96d` |
| 35 | `lemma` | [iInf_mul'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/iinf-mul.md) | 167 | `result-track:9cfa8c13792430cc4eb2df0d2b435993ab965ae8982bc8382956a2b966f710cc` |
| 36 | `lemma` | [mul_iInf_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/mul-iinf-of-ne.md) | 172 | `result-track:a10f7692ec68ad76dc14ec8c219b68ac631b8a51943cb74d83a5d201ce956bb8` |
| 37 | `lemma` | [iInf_mul_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/iinf-mul-of-ne.md) | 177 | `result-track:2201419c233b1bd1039d29dede74359b54712c1c23e01eb3456e48394fce94ae` |
| 38 | `lemma` | [add_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/add-isup.md) | 180 | `result-track:1f38b1d164e3556e2e1b641271cfc24ba74885758e1fd054aab6748237011d48` |
| 39 | `lemma` | [iSup_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/isup-add.md) | 187 | `result-track:2a7228fba89ebf67b5be7eb557ed19f133547c51e49e857dd19940aaa5b3b904` |
| 40 | `lemma` | [add_biSup'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/add-bisup.md) | 190 | `result-track:62b8cef81fa9d524926b834728523d0d6636c16c426442e319de472bdfc7feb7` |
| 41 | `lemma` | [biSup_add'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/bisup-add.md) | 195 | `result-track:554b5ee1b0ed40f59e4a5cab32b6bcc94d30597bd5e304c7b785b3a88cd176f7` |
| 42 | `lemma` | [add_biSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/add-bisup-source-edition-2.md) | 198 | `result-track:7b8e45c7285015e52d989916f98d56ebfd31c875f44481908f3617d6f9929d0b` |
| 43 | `lemma` | [biSup_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/bisup-add-source-edition-2.md) | 201 | `result-track:ceb8aef0d39e85c8e8f135638cdba28832bbc8ace45b2328fbcc7c9f70ece008` |
| 44 | `lemma` | [add_sSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/add-ssup.md) | 204 | `result-track:c1dee8465edbd36f6a1eea972e8accb4cd843d953e6c29403c869a982770f1aa` |
| 45 | `lemma` | [sSup_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/ssup-add.md) | 207 | `result-track:7292623a42578bb0aab5fb784555a513c17b379e58538d3df021c51de109946b` |
| 46 | `lemma` | [iSup_add_iSup_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/isup-add-isup-le.md) | 210 | `result-track:803cf1774b012376a8992643c6ed7bc08367e0934ea3c0ea9df992a1ec2dbe2f` |
| 47 | `lemma` | [biSup_add_biSup_le'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/bisup-add-bisup-le-source-edition-2.md) | 213 | `result-track:ee68b59cb93ce203f88abd5daa92d501359d9b2f881ddb708483c925f225c96b` |
| 48 | `lemma` | [biSup_add_biSup_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/bisup-add-bisup-le.md) | 219 | `result-track:dd58459088fa08889b6c0b21b5d283c19066fa7e3231b78960c2f773e57f0d83` |
| 49 | `lemma` | [iSup_add_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/isup-add-isup.md) | 223 | `result-track:32dd978e82e7a9ce87b4d90c78430f473a0c8fd720cf9c87360771c4cda1f1d5` |
| 50 | `lemma` | [iSup_add_iSup_of_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/isup-add-isup-of-monotone.md) | 231 | `result-track:da709bc31d1eb9a5f992bac3519c298683159a74c61196476681e6df19cecf3c` |
| 51 | `lemma` | [smul_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/smul-isup.md) | 235 | `result-track:c5d7144c8a06bac6be67fc92bb355e0d76e9ced2e5354e7d7a6b27d8e23fb7a3` |
| 52 | `lemma` | [smul_sSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/smul-ssup.md) | 239 | `result-track:e48a3f4daf4816464c20701cbeed8e989d474760372c0585dfc84107e29a0a08` |
| 53 | `lemma` | [sub_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatLatticeSourceEdition1.lean/declarations/sub-isup.md) | 243 | `result-track:a5bd8e632496ef50ebb4c97bb0b7c9093694e5c5a610add130b55a5d8591d3a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5522b873fdd69f8e5a41632103a314c419d900672ee222ab6f8f3bac6cb122c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Lattice/Variant4cd81e01536e05989d6e696aa1ff9fe520a4b83ea2310c3a8eefc7ff026e66b0.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Lattice/Variant4cd81e01536e05989d6e696aa1ff9fe520a4b83ea2310c3a8eefc7ff026e66b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
