# Verification target: GRWTSK.Topology.GeneralTopology.SeparatedMap.Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1354addf21a01f90bc7cd0a7e8dc4b50b7c7e520",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1354addf21a01f90bc7cd0a7e8dc4b50b7c7e520`.

Source path: `GRWTSK/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Connected.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.Clopen` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Topology.IsEmbedding.toPullbackDiag](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/topology-isembedding-topullbackdiag--80f2e37e7262a4cce79bf5f1.md) | 50 | `result-track:80f2e37e7262a4cce79bf5f13180b5cca8fed2c17f0f05fc957aa0d57002b264` |
| 2 | `lemma` | [Continuous.mapPullback](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/continuous-mappullback--f43298f46cde59d8104360b2.md) | 58 | `result-track:f43298f46cde59d8104360b254fa8c3e9fe72530db0ee7d7e29a1a4a72a8b191` |
| 3 | `def` | [IsSeparatedMap](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/isseparatedmap--7eed1dadb17fce391258f65d.md) | 70 | `declaration-track:7eed1dadb17fce391258f65d751b700252c53b19ac14a44e8ca5c90ae4bd8406` |
| 4 | `lemma` | [t2space_iff_isSeparatedMap](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/t2space-iff-isseparatedmap--3910df9f3c6e99f221ae9a1a.md) | 73 | `result-track:3910df9f3c6e99f221ae9a1afa00adca6257650c61a494ad5d39b0a8a549872d` |
| 5 | `lemma` | [T2Space.isSeparatedMap](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/t2space-isseparatedmap--a5db5d09765fc6b89a07e3f5.md) | 76 | `result-track:a5db5d09765fc6b89a07e3f54929052541846b0e426b72196cdfb74d0f7b532f` |
| 6 | `lemma` | [Function.Injective.isSeparatedMap](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/function-injective-isseparatedmap--288777d1a181fc7031df439e.md) | 78 | `result-track:288777d1a181fc7031df439e7c5180107f9423054994f46f5ccc9d09c7d4b2b1` |
| 7 | `lemma` | [isSeparatedMap_iff_disjoint_nhds](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/isseparatedmap-iff-disjoint-nhds--edf3ed4f3f3ae6a7bd2572f8.md) | 81 | `result-track:edf3ed4f3f3ae6a7bd2572f83382654dc151a5ace2005658fe3ecc8cd4a8824f` |
| 8 | `lemma` | [isSeparatedMap_iff_nhds](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/isseparatedmap-iff-nhds--dca968912677f91df375cb10.md) | 86 | `result-track:dca968912677f91df375cb10638dbc324ffe09ec105040932890d154e46ad978` |
| 9 | `theorem` | [isSeparatedMap_iff_isClosed_diagonal](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/isseparatedmap-iff-isclosed-diagonal--c4ec42595053373c177a5298.md) | 91 | `result-track:c4ec42595053373c177a5298edfc19b5efe03fd4077042f093953ed4271044a2` |
| 10 | `theorem` | [isSeparatedMap_iff_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/isseparatedmap-iff-isclosedembedding--558350f3588171cd27f2672b.md) | 101 | `result-track:558350f3588171cd27f2672b8ed65aa040e2bb309a343c5cb4f245710b9bd159` |
| 11 | `theorem` | [isSeparatedMap_iff_isClosedMap](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/isseparatedmap-iff-isclosedmap--0c841a8d23f1576d0d29b486.md) | 106 | `result-track:0c841a8d23f1576d0d29b4866a1440f210a8755d8fd6e7a1e7152ff9cd34a251` |
| 12 | `theorem` | [IsSeparatedMap.pullback](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/isseparatedmap-pullback--aa6f00d1a4da4f03ca82485e.md) | 113 | `result-track:aa6f00d1a4da4f03ca82485e3d33a1cbd4e839558ade2f82d63e41e018b87003` |
| 13 | `theorem` | [IsSeparatedMap.comp_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/isseparatedmap-comp-left--dfed89b55bede9e452130b24.md) | 120 | `result-track:dfed89b55bede9e452130b24862ef926ceae3e7a323ebde8dc2a0240865086d3` |
| 14 | `theorem` | [IsSeparatedMap.comp_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/isseparatedmap-comp-right--4d0c887552de9fafc220a41d.md) | 123 | `result-track:4d0c887552de9fafc220a41de2b90a13d177e360bf2bc7849483d0b99185f19e` |
| 15 | `def` | [IsLocallyInjective](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/islocallyinjective--c79d8feb2a6325caa751bb69.md) | 131 | `declaration-track:c79d8feb2a6325caa751bb69f28ffa5fadf2f31ef7a9323ed26a4d079de0f47d` |
| 16 | `lemma` | [Function.Injective.IsLocallyInjective](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/function-injective-islocallyinjective--ad4b41e07d1d8b3b2340a13d.md) | 133 | `result-track:ad4b41e07d1d8b3b2340a13d052f5b405ee3a7ae9715b3b22348d66607e56292` |
| 17 | `lemma` | [isLocallyInjective_iff_nhds](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/islocallyinjective-iff-nhds--d7a081c286b9fe46fae2fbc4.md) | 136 | `result-track:d7a081c286b9fe46fae2fbc4868887c27cfdfe1a46e0ef3585815fb22a510a2b` |
| 18 | `theorem` | [isLocallyInjective_iff_isOpen_diagonal](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/islocallyinjective-iff-isopen-diagonal--0ccad1a2471c4b3473a4c7eb.md) | 143 | `result-track:0ccad1a2471c4b3473a4c7ebd2a4cfac716e7dfcb0e1bfbb8ab637b76700d864` |
| 19 | `theorem` | [IsLocallyInjective_iff_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/islocallyinjective-iff-isopenembedding--88b097c7691d57b24bebead9.md) | 156 | `result-track:88b097c7691d57b24bebead9b7fbd8e063c2950b1825119df4615cb54f5cb0fa` |
| 20 | `theorem` | [isLocallyInjective_iff_isOpenMap](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/islocallyinjective-iff-isopenmap--2f4c59381df756db542126c6.md) | 161 | `result-track:2f4c59381df756db542126c608e059b8dc14c893f0dfc22fa6ffc054ef4b3644` |
| 21 | `theorem` | [discreteTopology_iff_locallyInjective](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/discretetopology-iff-locallyinjective--1f52d9445ccb087c2ff3a96d.md) | 167 | `result-track:1f52d9445ccb087c2ff3a96deaeba69a2e6323b3f9bd7ec56e68925167ec6d2e` |
| 22 | `theorem` | [IsLocallyInjective.comp_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/islocallyinjective-comp-left--8f611aa3afe41dec01573edc.md) | 174 | `result-track:8f611aa3afe41dec01573edcb554cc6408eb234b65655a8972a79b1758ce221f` |
| 23 | `theorem` | [IsLocallyInjective.comp_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/islocallyinjective-comp-right--cd230bf23ef37c117a829f85.md) | 178 | `result-track:cd230bf23ef37c117a829f85e4b2384155d24aa4155cc7b4e313f7444ba78ab5` |
| 24 | `theorem` | [IsSeparatedMap.isClosed_eqLocus](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/isseparatedmap-isclosed-eqlocus--54ce20f91329c56f2aaf6f2e.md) | 189 | `result-track:54ce20f91329c56f2aaf6f2ea7647f1861c8ef1dbc8947679877a4750b28036a` |
| 25 | `theorem` | [IsLocallyInjective.isOpen_eqLocus](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/islocallyinjective-isopen-eqlocus--c3b40dd3eb066c02f3794cce.md) | 194 | `result-track:c3b40dd3eb066c02f3794cceaef87b25fe362482094b3986890609d2d641ab31` |
| 26 | `theorem` | [eq_of_comp_eq](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/eq-of-comp-eq--519ad01a21c21b9fd1c85978.md) | 210 | `result-track:519ad01a21c21b9fd1c8597845d508e44734f455229c402e50516510ccf05eb3` |
| 27 | `theorem` | [eqOn_of_comp_eqOn](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/eqon-of-comp-eqon--578721b1e7166b14860627aa.md) | 216 | `result-track:578721b1e7166b14860627aac9b591bb8151074489095d110a17f105f6f3e456` |
| 28 | `theorem` | [const_of_comp](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/const-of-comp--459b5d0dbc4b4d9f882d531e.md) | 223 | `result-track:459b5d0dbc4b4d9f882d531e29e6e40b096a2ec1cbbdc9cd4e8ddd3725212ff7` |
| 29 | `theorem` | [constOn_of_comp](../../../../../mathematics/Topology/GeneralTopology/SeparatedMap/Variante6473740a66d05d49186dde85e679f9b482d8080fd47a85ffb052fabf8ee9bd7.lean/declarations/conston-of-comp--3f38e5f6e260365239f17858.md) | 227 | `result-track:3f38e5f6e260365239f17858bcff1c7bdc9c3f100158c3ef55a14c014a611f4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
