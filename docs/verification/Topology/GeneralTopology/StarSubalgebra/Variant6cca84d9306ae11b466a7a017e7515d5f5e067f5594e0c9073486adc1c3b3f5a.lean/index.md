# Verification target: GRWTSK.Topology.GeneralTopology.StarSubalgebra.Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ebd3d261458b22283aca6c28f3d81a6a3ecac77",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ebd3d261458b22283aca6c28f3d81a6a3ecac77`.

Source path: `GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Subalgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Algebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Star` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/instance--b35ea6319bba0558cea846a9.md) | 33 | `declaration-track:b35ea6319bba0558cea846a906b53a98636e89f7a1fb71d276d93165817ff7ef` |
| 2 | `lemma` | [isEmbedding_inclusion](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/isembedding-inclusion--69ff72f519a229d04b471484.md) | 37 | `result-track:69ff72f519a229d04b471484c73d8bd0728213aeb7dc7c1f4ecb3e8bdd5975c6` |
| 3 | `theorem` | [isClosedEmbedding_inclusion](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/isclosedembedding-inclusion--93db1c824bd53b11360afb4b.md) | 46 | `result-track:93db1c824bd53b11360afb4b814818f699f52cc1bc92076f948e326bb925a8dd` |
| 4 | `def` | [topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/topologicalclosure--e866c1068721bc4e9597b32d.md) | 60 | `declaration-track:e866c1068721bc4e9597b32d56e2e770bd20ac36cf7b7ea343579dd4b1eacb77` |
| 5 | `theorem` | [topologicalClosure_toSubalgebra_comm](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/topologicalclosure-tosubalgebra-comm--5df44e39b46ace9966f48b98.md) | 67 | `result-track:5df44e39b46ace9966f48b981d32c4ccdcc375cd200269ed5a3e85009e6129ca` |
| 6 | `theorem` | [topologicalClosure_coe](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/topologicalclosure-coe--038c7b459ed7c1b88d502afc.md) | 72 | `result-track:038c7b459ed7c1b88d502afc8a1c98ce208a8193e5e9757af14157f92dbdbe1c` |
| 7 | `theorem` | [le_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/le-topologicalclosure--7497c08408e4c7e0b425e5ea.md) | 76 | `result-track:7497c08408e4c7e0b425e5eadc70eacea906bebdb488756147c1510cf6c89161` |
| 8 | `theorem` | [isClosed_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/isclosed-topologicalclosure--757a752d07b4058994ebf160.md) | 79 | `result-track:757a752d07b4058994ebf160b39af758e8b64758abd63bc0a393afb84b9c1de4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/instance--f61bda5769079eeb153ffc9e.md) | 83 | `declaration-track:f61bda5769079eeb153ffc9ef05c7b870857df747a52400d47ad96615e5d9fd6` |
| 10 | `theorem` | [topologicalClosure_minimal](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/topologicalclosure-minimal--82e53d0531dcc03a38d64a70.md) | 88 | `result-track:82e53d0531dcc03a38d64a708c1f2739d6f6a189cbba298417d62273d5165b9b` |
| 11 | `theorem` | [topologicalClosure_mono](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/topologicalclosure-mono--8981ef1c4e7194dbd410480f.md) | 92 | `result-track:8981ef1c4e7194dbd410480ffbfc45b93d131595309c10d19faf4599020d9a96` |
| 12 | `theorem` | [topologicalClosure_map_le](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/topologicalclosure-map-le--dafe6d4ed09de69047f873b2.md) | 96 | `result-track:dafe6d4ed09de69047f873b26785292ee23b4815827c8c2062bd9bb79f783c95` |
| 13 | `theorem` | [map_topologicalClosure_le](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/map-topologicalclosure-le--2a7fe5434d876c167ed09f34.md) | 101 | `result-track:2a7fe5434d876c167ed09f341075eb938d46031b1c8b6aee66bd3c0ee6387a2d` |
| 14 | `theorem` | [topologicalClosure_map](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/topologicalclosure-map--b9b17ebc3d8d519e478be3e5.md) | 106 | `result-track:b9b17ebc3d8d519e478be3e517e89bc95aaf5fa7984dcb580366bd5c033c0542` |
| 15 | `theorem` | [_root_.Subalgebra.topologicalClosure_star_comm](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/root-subalgebra-topologicalclosure-star-comm--7c8bab5cdef097531c22bf14.md) | 111 | `result-track:7c8bab5cdef097531c22bf145bcd48792ba6d59cbc16bdcfa917026b12d8505d` |
| 16 | `abbrev` | [commSemiringTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/commsemiringtopologicalclosure--c65ec8294dc9b6e4fbb090e9.md) | 120 | `declaration-track:c65ec8294dc9b6e4fbb090e9cd196d87c63b792fa9b9053057938b91dd53f035` |
| 17 | `abbrev` | [commRingTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/commringtopologicalclosure--05c0baa19efa70230f9f6111.md) | 126 | `declaration-track:05c0baa19efa70230f9f61113ee300c15e4845557f74cf62809d50b0d0513e3e` |
| 18 | `theorem` | [_root_.StarAlgHom.ext_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/root-staralghom-ext-topologicalclosure--6dabc1d6851aefa4ea428bd8.md) | 133 | `result-track:6dabc1d6851aefa4ea428bd83c8ba01635654a35086eae36973c96e17e456af4` |
| 19 | `theorem` | [_root_.StarAlgHomClass.ext_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/root-staralghomclass-ext-topologicalclosure--1d06eb89ecee19f006ffa8a1.md) | 152 | `result-track:1d06eb89ecee19f006ffa8a1b39f603fcd10b80e2109b3b799fbb205e3ff2ebb` |
| 20 | `def` | [elemental](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/elemental--63197e3040d678f049f9a5f4.md) | 180 | `declaration-track:63197e3040d678f049f9a5f45981ac13409a333336822670a5cd017086c8b9c4` |
| 21 | `theorem` | [self_mem](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/self-mem--f4f25213940053dbad5cdd66.md) | 188 | `result-track:f4f25213940053dbad5cdd66c13b29836c869faf975902d7d42f70ff7aee892b` |
| 22 | `theorem` | [star_self_mem](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/star-self-mem--59823bc2d331a0e3b1810b6c.md) | 193 | `result-track:59823bc2d331a0e3b1810b6ccc3ee9beba1e6a78560f34d7eecc091ca3cf91ab` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/instance--dc28b462326fff9e2a1b2251.md) | 200 | `declaration-track:dc28b462326fff9e2a1b2251cbbc397565b3e17767a53feea5500ec5e67d5d02` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/instance--dd2fcf4e159e03a83c947ce9.md) | 204 | `declaration-track:dd2fcf4e159e03a83c947ce97374832056fbc9fdd19bb2322420ef2e9ebb496d` |
| 25 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/isclosed--60e463aa3eed34fdc881b442.md) | 209 | `result-track:60e463aa3eed34fdc881b442b745d8a9a72e313e27a4d48d894df2c29b9554e5` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/instance--c527dea0887afa602fb66bf2.md) | 214 | `declaration-track:c527dea0887afa602fb66bf2b7e982d07816ecaf08d9801b7b8c16479cee3a04` |
| 27 | `theorem` | [le_of_mem](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/le-of-mem--1a947f3cbf66f04cd9ac16c9.md) | 220 | `result-track:1a947f3cbf66f04cd9ac16c9ef8d7397982576eac12a1a7332779f5b2a8ed9c4` |
| 28 | `theorem` | [le_iff_mem](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/le-iff-mem--2e8be5eeed9210ce2a439dda.md) | 225 | `result-track:2e8be5eeed9210ce2a439dda671a555ab73a12b7c19f644b25339a51cf504c58` |
| 29 | `theorem` | [isClosedEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/isclosedembedding-coe--8dd4a446703eba9e03756eb3.md) | 233 | `result-track:8dd4a446703eba9e03756eb36bc968c68081da723fc78935e7a7205e3848cd1f` |
| 30 | `theorem` | [induction_on](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/induction-on--fd4923d99cdb6e215ce6e1e8.md) | 241 | `result-track:fd4923d99cdb6e215ce6e1e8949e62549745dfcbe2b576825a90718728d1765e` |
| 31 | `theorem` | [starAlgHomClass_ext](../../../../../mathematics/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/declarations/staralghomclass-ext--bbe2f7251b8e0e6cc56eaa43.md) | 267 | `result-track:bbe2f7251b8e0e6cc56eaa43d9120f1e6a0f6f7f22e5b5e6be862e3c9b0a7f40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
