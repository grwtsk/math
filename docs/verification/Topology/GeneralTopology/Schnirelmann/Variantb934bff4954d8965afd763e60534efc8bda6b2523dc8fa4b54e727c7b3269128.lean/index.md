# Verification target: GRWTSK.Topology.GeneralTopology.Schnirelmann.Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "037089457948f261c4f0ae7cfe22381ab1a971d5",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `037089457948f261c4f0ae7cfe22381ab1a971d5`.

Source path: `GRWTSK/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Rify` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schnirelmannDensity](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity--3180cefc0ee0614783617705.md) | 63 | `declaration-track:3180cefc0ee061478361770509f0046f869b465d19ebcd221b00615dfd786720` |
| 2 | `lemma` | [schnirelmannDensity_nonneg](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-nonneg--063722e206528fb9cc61e8b3.md) | 70 | `result-track:063722e206528fb9cc61e8b35e79a5f27d675dec32a11e7dbac26145c75693eb` |
| 3 | `lemma` | [schnirelmannDensity_le_div](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-le-div--1f36cd402304e86860ce7d9a.md) | 73 | `result-track:1f36cd402304e86860ce7d9a1b2510eabf4459e0586616f86cd175fd584f837b` |
| 4 | `lemma` | [schnirelmannDensity_mul_le_card_filter](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-mul-le-card-filter--c99e8af5fa1977ae90d79e49.md) | 81 | `result-track:c99e8af5fa1977ae90d79e49d9f2bfd269efbc9b5d37490a5a7aa475f7d6a389` |
| 5 | `lemma` | [schnirelmannDensity_le_of_le](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-le-of-le--446993a3d33d8cfa597dcf52.md) | 94 | `result-track:446993a3d33d8cfa597dcf5291d987239cbbd2ac214ef7380e96ab4e464131d7` |
| 6 | `lemma` | [schnirelmannDensity_le_one](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-le-one--f7ab8eb30457a0d84bdacc4b.md) | 98 | `result-track:f7ab8eb30457a0d84bdacc4b6b82893bb1ed3f00b35881463bff93aa8a585086` |
| 7 | `lemma` | [schnirelmannDensity_le_of_notMem](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-le-of-notmem--9b16e0f37180c19a1cad66bc.md) | 105 | `result-track:9b16e0f37180c19a1cad66bcb410b0f16787737c079374c661b7e75885fd483d` |
| 8 | `lemma` | [schnirelmannDensity_eq_zero_of_one_notMem](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-eq-zero-of-one-notmem--e8aaf1c44993622f8d6b1dba.md) | 118 | `result-track:e8aaf1c44993622f8d6b1dbaaa367e7a4d0ab55c9015945cff0f8bf0d6afd53d` |
| 9 | `lemma` | [schnirelmannDensity_le_of_subset](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-le-of-subset--6dd97503a974e2a2d7e8bd3b.md) | 122 | `result-track:6dd97503a974e2a2d7e8bd3b853008fe3132a9df55dbe4f7f4c2fc937918be4a` |
| 10 | `lemma` | [schnirelmannDensity_eq_one_iff](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-eq-one-iff--97119b99a1fb5ad8336b63d7.md) | 127 | `result-track:97119b99a1fb5ad8336b63d7be72e08c3f8eb6895c151effb971bd282eb97e74` |
| 11 | `lemma` | [schnirelmannDensity_eq_one_iff_of_zero_mem](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-eq-one-iff-of-zero-mem--c3f2fa52f9c3256f0a2af22c.md) | 142 | `result-track:c3f2fa52f9c3256f0a2af22cb9b29b2b3627ffc2bdad3eab5564ad22c41d2478` |
| 12 | `lemma` | [le_schnirelmannDensity_iff](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/le-schnirelmanndensity-iff--fc3fab541429143e950fc211.md) | 153 | `result-track:fc3fab541429143e950fc211a5b2078346944d3e10759a1c1102e05bc2fa8929` |
| 13 | `lemma` | [schnirelmannDensity_lt_iff](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-lt-iff--1b8dd32ffbd60e5054d4f151.md) | 157 | `result-track:1b8dd32ffbd60e5054d4f151ad015195371c7b770f6159e5b577596bf269a8a4` |
| 14 | `lemma` | [schnirelmannDensity_le_iff_forall](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-le-iff-forall--d4b46d49c07a9545faa9071f.md) | 161 | `result-track:d4b46d49c07a9545faa9071f147413e41fadb3d3e4b1f6386ad3d7c8afe49e0f` |
| 15 | `lemma` | [schnirelmannDensity_congr'](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-congr--5a754e30cc2c69799ad9c8ae.md) | 167 | `result-track:5a754e30cc2c69799ad9c8aec2d24159e7a62a5a704ff28680c757c34430fd91` |
| 16 | `lemma` | [schnirelmannDensity_insert_zero](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-insert-zero--07003dfb162126ca66c2921a.md) | 172 | `result-track:07003dfb162126ca66c2921a4f9e359a370bbfcaa8d7316a257423694bd2f8a0` |
| 17 | `lemma` | [schnirelmannDensity_sdiff_singleton_zero](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-sdiff-singleton-zero--51f3bceceb6d7e4bd1d202ff.md) | 177 | `result-track:51f3bceceb6d7e4bd1d202ffe768b0403a8769abd272a501d8de46f66af2fe5c` |
| 18 | `lemma` | [schnirelmannDensity_congr](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-congr--b3585f73b81b4593d11bd9fd.md) | 184 | `result-track:b3585f73b81b4593d11bd9fdc7d3b7ebbc457b7b81bbd3f83014c5a02371cf22` |
| 19 | `lemma` | [exists_of_schnirelmannDensity_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/exists-of-schnirelmanndensity-eq-zero--63cbd8f3f95af8a609bbe095.md) | 193 | `result-track:63cbd8f3f95af8a609bbe095c4ec169577b2713c5bc7403093d03d675e6e5b57` |
| 20 | `lemma` | [schnirelmannDensity_empty](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-empty--79fc241ea93816a0eaa7889c.md) | 201 | `result-track:79fc241ea93816a0eaa7889c4b60e3b8367521cd32a14fb07527a304dbf88f17` |
| 21 | `lemma` | [schnirelmannDensity_finset](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-finset--f2f3a5f339470da4f85a14e0.md) | 205 | `result-track:f2f3a5f339470da4f85a14e06776070aa0f0558cd9514520534e293fa3d23c1c` |
| 22 | `lemma` | [schnirelmannDensity_finite](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-finite--fc54f40e97e457515bb816c4.md) | 219 | `result-track:fc54f40e97e457515bb816c4c4564dfd65cfcffaa2572b40c200b7f5c599294d` |
| 23 | `lemma` | [schnirelmannDensity_univ](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-univ--9130d64c8ef0f2c2cf47490c.md) | 222 | `result-track:9130d64c8ef0f2c2cf47490c5a10b2525b93b468750c8173c4425559f62f7914` |
| 24 | `lemma` | [schnirelmannDensity_setOfPred_even](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-setofpred-even--cfbcec392b56b2874bd57484.md) | 225 | `result-track:cfbcec392b56b2874bd5748464139055e79762fdbcacd00fbc9592fc2f340e7d` |
| 25 | `lemma` | [schnirelmannDensity_setOfPred_prime](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-setofpred-prime--2ba09dd8bd4a18836162f4e2.md) | 231 | `result-track:2ba09dd8bd4a18836162f4e21d6d3638a6a592ce4c67f9adeddde5d6f3bb1803` |
| 26 | `lemma` | [schnirelmannDensity_setOfPred_mod_eq_one](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-setofpred-mod-eq-one--48438f568e020bd64222876b.md) | 242 | `result-track:48438f568e020bd64222876bd67436ea142f7f31ca25d17b81e95c8a8f89f96d` |
| 27 | `lemma` | [schnirelmannDensity_setOfPred_modeq_one](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-setofpred-modeq-one--5dc3db3150a66eedbfb364a9.md) | 280 | `result-track:5dc3db3150a66eedbfb364a9e7f06516d22a95d47fbe220655c393e9a546ac40` |
| 28 | `lemma` | [schnirelmannDensity_setOfPred_Odd](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/schnirelmanndensity-setofpred-odd--f9ade4eccc4f338e3230b010.md) | 290 | `result-track:f9ade4eccc4f338e3230b010d38d095c7625142dd2796a9579021f503203c36a` |
| 29 | `theorem` | [add_eq_univ_of_one_le_schirelmannDensity_add_schnirelmannDensity](../../../../../mathematics/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/declarations/add-eq-univ-of-one-le-schirelmanndensity-add-schnirelmanndensity--9f19becec89271eecc492c0a.md) | 305 | `result-track:9f19becec89271eecc492c0adffbe3cf2980bbba403d5eb16b0330eba5c37037` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
