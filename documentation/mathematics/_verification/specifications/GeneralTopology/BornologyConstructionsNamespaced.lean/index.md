# Verification target: Bornology Constructions Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "511d70771daa548556498727add4093b3a53af0f",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variantbd1d438738ca217ba18cb9c4b9000544aaa85f05abd577a3f7a2d42de536f74e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `511d70771daa548556498727add4093b3a53af0f`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variantbd1d438738ca217ba18cb9c4b9000544aaa85f05abd577a3f7a2d42de536f74e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variantbd1d438738ca217ba18cb9c4b9000544aaa85f05abd577a3f7a2d42de536f74e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.TypeTags.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Prod.instBornology](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/prod-instbornology.md) | 33 | `declaration-track:ce1aa00d234a0e70965f066b2f66d602357ea16bcc549ca33b6d805bdaaa1404` |
| 2 | `instance` | [Pi.instBornology](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/pi-instbornology.md) | 38 | `declaration-track:517d5f7a44dd30d5904838b56d89071d90b10481e6a7897367779e39cced242f` |
| 3 | `abbrev` | [Bornology.induced](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/bornology-induced.md) | 43 | `declaration-track:eef358941b1cfa25fe6814446d3250e30a9b6a51b397928ac20f1e1c14f416e5` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/instance-source-edition-7.md) | 47 | `declaration-track:80d0bf401b65a3d7b2fc73376a830858fe43f1dbe657424b2ae1d9524e923534` |
| 5 | `theorem` | [cobounded_prod](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/cobounded-prod.md) | 57 | `result-track:3414ff1aced9c7ab049e6e3fd4b9f19ceef0f42ec4d3fa906cf65d4d497be96d` |
| 6 | `theorem` | [isBounded_image_fst_and_snd](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/isbounded-image-fst-and-snd.md) | 60 | `result-track:5e10a9156d6f8ffad4abc8353d4bf0a7ecc3db332b590456683a919316c57476` |
| 7 | `lemma` | [IsBounded.image_fst](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/isbounded-image-fst.md) | 64 | `result-track:ebc555abf28f47877700b976754bd67f09d9e9f8a33137281e6851173fb9e414` |
| 8 | `lemma` | [IsBounded.image_snd](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/isbounded-image-snd.md) | 67 | `result-track:6fcb7f3aaafc846c1d1a2bf98b2fb4e4795c4b703880495b856a86096aec2367` |
| 9 | `theorem` | [IsBounded.fst_of_prod](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/isbounded-fst-of-prod.md) | 72 | `result-track:2f6e3821aad37e677638abdc21a36250beee1640cbfdbd92d269a197d3b5bfef` |
| 10 | `theorem` | [IsBounded.snd_of_prod](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/isbounded-snd-of-prod.md) | 75 | `result-track:c4c9b13556d5bb34c124f6c54eddc38410b3020c98b9f9cc11259562b71b88cc` |
| 11 | `theorem` | [IsBounded.prod](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/isbounded-prod.md) | 78 | `result-track:07b591d3ceb049ef1c3b037b15921674c6a86fff9a1a61946d9335df25385cee` |
| 12 | `theorem` | [isBounded_prod_of_nonempty](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/isbounded-prod-of-nonempty.md) | 82 | `result-track:65f199c4e3f2c47a16175c1fb5cedd77d4e8b12c237d62dcce136c508435dcc2` |
| 13 | `theorem` | [isBounded_prod](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/isbounded-prod-source-edition-2.md) | 86 | `result-track:7f13f995f36eef1c84384ffefd4886cd463ee1ad015b1e5d533acf09fa187ac0` |
| 14 | `theorem` | [isBounded_prod_self](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/isbounded-prod-self.md) | 91 | `result-track:78c46fcec847807420ae055392eb21a2c707495a54b1596b965947ed189255cf` |
| 15 | `theorem` | [cobounded_pi](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/cobounded-pi.md) | 100 | `result-track:514bdf3c99fe393b3369c35f9df3c8df3a2156cf642701ccdb32083dcd2207da` |
| 16 | `theorem` | [forall_isBounded_image_eval_iff](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/forall-isbounded-image-eval-iff.md) | 103 | `result-track:bc5d16b8d94e54c9aa70735bcb43a746600cecf685549a46370b0812f40f22ca` |
| 17 | `lemma` | [IsBounded.image_eval](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/isbounded-image-eval.md) | 107 | `result-track:fd9964bee650dcc1571f825a9749745d384bd240669abf11f351eb4b4ccf7514` |
| 18 | `theorem` | [IsBounded.pi](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/isbounded-pi-source-edition-2.md) | 111 | `result-track:fc8032a73c992d2f66e77e15d2839b77aee1967d31c116cc5b41f68167ce10ce` |
| 19 | `theorem` | [isBounded_pi_of_nonempty](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/isbounded-pi-of-nonempty.md) | 114 | `result-track:8b9b21db44041f4746f217a8ec6faa8c7d192fd1afdcc229c28a295e0d0e6098` |
| 20 | `theorem` | [isBounded_pi](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/isbounded-pi.md) | 118 | `result-track:ec95fefdae987f3562b9c4825fefcfb3afc18f4f07fe9c6287f63c513e190105` |
| 21 | `theorem` | [isBounded_induced](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/isbounded-induced.md) | 130 | `result-track:8cd25ed28d681b5b0e8e5eb13da56bbcdc782b545c3fea379c765a5ab6025ea0` |
| 22 | `theorem` | [isBounded_image_subtype_val](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/isbounded-image-subtype-val.md) | 134 | `result-track:7a30b07f6f72a3ab5b6aa5cd806b2067fb5901aaf630a91b4d41df85b650b643` |
| 23 | `instance` | [(anonymous)](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/instance-source-edition-4.md) | 147 | `declaration-track:68160ef43adc890ac2ad2222dd4a8149dfc69f878568472f6a917f246e4c5be0` |
| 24 | `instance` | [(anonymous)](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/instance-source-edition-8.md) | 150 | `declaration-track:ae3573037bba091e216476202a2fac9f38dfee6064aaf896442f6a2f9b02555d` |
| 25 | `theorem` | [boundedSpace_induced_iff](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/boundedspace-induced-iff.md) | 153 | `result-track:d0a08a45474c356118c45576cd6151cb980aa5bdedb991cfabcff337e2b97794` |
| 26 | `theorem` | [boundedSpace_subtype_iff](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/boundedspace-subtype-iff.md) | 157 | `result-track:e9becab0cc97d5bc72ad9088da3b4d36acf1fc6ee040df102f8d90bd86ea5bea` |
| 27 | `theorem` | [boundedSpace_val_set_iff](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/boundedspace-val-set-iff.md) | 161 | `result-track:54fa8e4570fc938c7a4149905b1f05fb35efc08a8964e9e52528806d7059781a` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/instance-source-edition-5.md) | 168 | `declaration-track:6c0e822c761cc79121ba8a0195b42ec8f79cd9b8b7769c8e4e902d30a79ad799` |
| 29 | `instance` | [(anonymous)](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/instance-source-edition-10.md) | 178 | `declaration-track:f43bfd4fa0cd328b09dc94e60060945269a77ac0a831cf3bdb5af643cbe0cd95` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/instance.md) | 181 | `declaration-track:413a3689b493c6df296031eba95fb2e4eeaa880edb90ad02a9690dd4d142af11` |
| 31 | `instance` | [(anonymous)](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/instance-source-edition-2.md) | 184 | `declaration-track:417b953300ca96d24cc7a05936f4c0e2e0579bac0e8f032d597b752a81bf860c` |
| 32 | `instance` | [(anonymous)](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/instance-source-edition-9.md) | 187 | `declaration-track:b1769460f017fc43d9242fa7c33b54d6c872c5d0d8bbb848201ea7906d56a63d` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/instance-source-edition-3.md) | 197 | `declaration-track:55e4d6962f3396e2a4082add67ceac04e7e19c883310b3ff8fc09843eb1e79a3` |
| 34 | `instance` | [(anonymous)](../../../../GeneralTopology/BornologyConstructionsNamespaced.lean/declarations/instance-source-edition-6.md) | 200 | `declaration-track:7790925886d2746912d68debdb25fb0d8758a93b80712d7efc6b9c12663a9fbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b6b5190d98f62f1990ea7a2804f100fe13828f42341ef1f0e4ea3f6c1cec02b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Constructions/Variantbd1d438738ca217ba18cb9c4b9000544aaa85f05abd577a3f7a2d42de536f74e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Constructions/Variantbd1d438738ca217ba18cb9c4b9000544aaa85f05abd577a3f7a2d42de536f74e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
