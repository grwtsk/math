# Verification target: Compactum Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f797227f08c2d351198da1b4a65a9bbf5d2f0a4",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compactum/Variante2c686aacdef7d532e120c25c17993df708bd41d00a2031181ade6f7486e7fa6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CompactumNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/CompactumNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f797227f08c2d351198da1b4a65a9bbf5d2f0a4`.

Source path: `GRWTSK/Topology/GeneralTopology/Compactum/Variante2c686aacdef7d532e120c25c17993df708bd41d00a2031181ade6f7486e7fa6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compactum/Variante2c686aacdef7d532e120c25c17993df708bd41d00a2031181ade6f7486e7fa6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Types` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Equivalence` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Constructions` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Compactum](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/compactum.md) | 88 | `declaration-track:2418401c018423b022792538b886efcb55f8b8a36b9b3664886bbe7a8e69c963` |
| 2 | `def` | [forget](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/forget.md) | 94 | `declaration-track:bbe657c01dcfd0edecf2a32fbd62e9f1a5f347061ebef6bb89625dc3128aec39` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/instance.md) | 97 | `declaration-track:077f2eb02ef9b32f9b5723862c064a238636b6d58700c0112180775deaf8cc97` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/instance-source-edition-9.md) | 100 | `declaration-track:e97bcd7502cfa89b5f02dc6879c4f6f7dd25ee8aef4ca1afa06f1b9b81389156` |
| 5 | `def` | [free](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/free.md) | 104 | `declaration-track:8af620f59791733e53b6d4fd851fd4309325bdf632f9904dfb0c90c4969b631e` |
| 6 | `def` | [adj](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/adj.md) | 108 | `declaration-track:639ee87bd93dc6fc6af499a71c6ca291d17a8052a282954594db550f6d9d2b05` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/instance-source-edition-4.md) | 111 | `declaration-track:5f0cf0da6edda075d778481af32931d5b73e8816634adc31883695b3e75dddb8` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/instance-source-edition-8.md) | 114 | `declaration-track:dcdb25b1b0c46988b0ae40e8c35a910bee9adcb0cde4bf386c1f7d76c9de576f` |
| 9 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/instance-source-edition-2.md) | 119 | `declaration-track:13a0e38e81866aa38617c10bd9815ee6367a61756a0083e36e9dc9f2d49dba0d` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/instance-source-edition-6.md) | 123 | `declaration-track:c5ea48ebc6bb985d7e4e00c2c80e38e18091e18b2f74a2b1690343ad897b12f0` |
| 11 | `def` | [str](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/str.md) | 127 | `declaration-track:7269f5b69af1238330d35569251a03c8d5d78a7cfa10213ce1dd7777aec7cb0d` |
| 12 | `def` | [join](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/join.md) | 131 | `declaration-track:8fc621d9f11f17381393c7a5625e7e36147fe8ed27c2ea0e51e6a9a15746a3a4` |
| 13 | `def` | [incl](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/incl.md) | 135 | `declaration-track:f3d745b4c3480d64bfdaf55005423439ceda6fb24cc671839312e9e2027863be` |
| 14 | `theorem` | [str_incl](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/str-incl.md) | 139 | `result-track:61ee5213743172d65fca93999f30e80a7e4a532b056894558098596c877d4c59` |
| 15 | `theorem` | [str_hom_commute](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/str-hom-commute.md) | 145 | `result-track:5fe2e6756caecba2aea8c3134c384b5ecbd2c4d1e4e73c1bcb5d9cb277230d2e` |
| 16 | `theorem` | [join_distrib](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/join-distrib.md) | 152 | `result-track:c904d26eeb9ac193b8b9c65e2a4b6ab388305ed41424f1f643a5fa34f3c9a1aa` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/instance-source-edition-5.md) | 158 | `declaration-track:bf4da40ab095acc20d831966371b588ae87ba70f33c8a9c85e5878be9aa1f88d` |
| 18 | `theorem` | [isClosed_iff](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/isclosed-iff.md) | 165 | `result-track:e47343053c1be84d92104bef1907f19e24ac821c249c9fcd80d4de518609147e` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/instance-source-edition-7.md) | 179 | `declaration-track:ce6a1d6589821b67349a7aec145670ec52150a5cb65d5fb985b67e64433ca118` |
| 20 | `def` | [basic](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/basic.md) | 189 | `declaration-track:794a5dd4e756758e604ef511185c90623ec8b4fe73acc59876da90f785e2fef7` |
| 21 | `def` | [cl](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/cl.md) | 193 | `declaration-track:c709cd82687f3290f7a60583af9312a0d9bacba00dafedf9c1816c6203fd314b` |
| 22 | `theorem` | [basic_inter](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/basic-inter.md) | 196 | `result-track:25108706917104aba308c36f7631dd6bdf8dcbe2a97990c638ba7b11dc671648` |
| 23 | `theorem` | [subset_cl](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/subset-cl.md) | 205 | `result-track:dc5909109cd547e04fd77c009c83073b0615ccb9a36caebb93adc17865e1d633` |
| 24 | `theorem` | [cl_cl](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/cl-cl.md) | 208 | `result-track:6c5367be24b1839eaed0dff0e5d32381050c42b9cb495e8c7316dd590d9426aa` |
| 25 | `theorem` | [isClosed_cl](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/isclosed-cl.md) | 267 | `result-track:6ad3cda07a24bf1832110ffe057dc8fc41c3c78f3b9d843513e71ed2b4304058` |
| 26 | `theorem` | [str_eq_of_le_nhds](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/str-eq-of-le-nhds.md) | 272 | `result-track:0f8a5c8866a9209a79790f2e28d72f8eab4a02f7d8e06c2c6569a31130a11351` |
| 27 | `theorem` | [le_nhds_of_str_eq](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/le-nhds-of-str-eq.md) | 342 | `result-track:2158a5b1133f8fb64a83899d8caff28660b8f001aa5ef883d9d1233cf33e4763` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/instance-source-edition-3.md) | 346 | `declaration-track:4c30159b20e4847aa2c3cd690ab70ae8b2c02c8eb482e56b3a4bcf69ed66be76` |
| 29 | `theorem` | [lim_eq_str](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/lim-eq-str.md) | 352 | `result-track:d287034d9cfcb223c1615e011d104132f8bcede0354de2d41a32b788544fcc0e` |
| 30 | `theorem` | [cl_eq_closure](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/cl-eq-closure.md) | 356 | `result-track:4d17c6e8e333fe32e456e46929db95253fc4384842f76e893dbb7306f34f24dc` |
| 31 | `theorem` | [continuous_of_hom](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/continuous-of-hom.md) | 366 | `result-track:c5a8ecb2822d8c73ee09829066f2a6e82cd936813fa996baecbec3cb9e909249` |
| 32 | `def` | [ofTopologicalSpace](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/oftopologicalspace.md) | 375 | `declaration-track:e8a198bc42673822a7db238bbdd68d15f098e1529dfaeaa14b17a80cbc91a007` |
| 33 | `def` | [homOfContinuous](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/homofcontinuous.md) | 405 | `declaration-track:5970d68c2a947e39ddb6afcf7b8004101acc208d1ab9a69d59b5073146d1f845` |
| 34 | `def` | [compactumToCompHaus](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/compactumtocomphaus.md) | 417 | `declaration-track:ebe9f867187a85e7d9442d1228746a826d700ac356caa2247d734ad09e239700` |
| 35 | `instance` | [full](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/full.md) | 426 | `declaration-track:ea968432b2d4f7965610e0aa42fad684e4e9b6043e918cb0f12e4130089b2085` |
| 36 | `instance` | [faithful](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/faithful.md) | 430 | `declaration-track:22a6a86fe484c6385239a599b904b82d070572132c78b8f27d4af24ef0ccb5cd` |
| 37 | `def` | [isoOfTopologicalSpace](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/isooftopologicalspace.md) | 439 | `declaration-track:83c85089cbedff93f7ab6b881ad04e42eb0bb6f06520bc28c0ea1674c8d0c1bc` |
| 38 | `instance` | [essSurj](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/esssurj.md) | 456 | `declaration-track:a4fba034b4e2618829b77b50f47c2c906c09aa504d412de340d8ca12e07c82c3` |
| 39 | `instance` | [isEquivalence](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/isequivalence.md) | 460 | `declaration-track:f548da13721eee623c6324b135e6c11f9af478f77904db7510854d94901e35de` |
| 40 | `def` | [compactumToCompHausCompForget](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/compactumtocomphauscompforget.md) | 466 | `declaration-track:f91a5e0025a872f72b1d260f4ee383fa36c4fdd14947659811883afdcafc7462` |
| 41 | `instance` | [CompHaus.forgetCreatesLimits](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/comphaus-forgetcreateslimits.md) | 477 | `declaration-track:bc9a1bab321b0215bbc43f8a250c17072d56b5d9ab40be9d84deb0d98a465ff3` |
| 42 | `instance` | [Profinite.forgetCreatesLimits](../../../../GeneralTopology/CompactumNamespaced.lean/declarations/profinite-forgetcreateslimits.md) | 485 | `declaration-track:379ba44931e6c09b4294e5ba613147e876236d44a3bb504db38e5db5ffac37a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7975c7bb134346f5baa5962832181b2aa6571b23d44ef803cc090949f2cba191 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Compactum/Variante2c686aacdef7d532e120c25c17993df708bd41d00a2031181ade6f7486e7fa6.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Compactum/Variante2c686aacdef7d532e120c25c17993df708bd41d00a2031181ade6f7486e7fa6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
