# Verification target: Uniform Space Ultra Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18085128a6e959dca990870bd6a3ca410c0a49b7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0bbd5cd5a0530b004e4c3ce134c2b2a4b0a4707550c4e4e1be1394d467d3f137.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18085128a6e959dca990870bd6a3ca410c0a49b7`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant0bbd5cd5a0530b004e4c3ce134c2b2a4b0a4707550c4e4e1be1394d467d3f137.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant0bbd5cd5a0530b004e4c3ce134c2b2a4b0a4707550c4e4e1be1394d467d3f137.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTransitiveRel](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/istransitiverel.md) | 62 | `declaration-track:118ce4b3b66bd84895baaa979d84a96ea76dfe66d664214c7db9181bcb311648` |
| 2 | `lemma` | [IsTransitiveRel.comp_subset_self](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/istransitiverel-comp-subset-self.md) | 65 | `result-track:a77aa21d8f962d62e5139e03bbb2a9c1136bb02af9840785827f90069a2b8555` |
| 3 | `lemma` | [isTransitiveRel_iff_comp_subset_self](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/istransitiverel-iff-comp-subset-self.md) | 70 | `result-track:621d12170797eeeec5018a99bd6063e9adca6c85e28a4cbfdc18349c2e8c3fba` |
| 4 | `lemma` | [isTransitiveRel_empty](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/istransitiverel-empty.md) | 74 | `result-track:291c33a81ffd3168debd1551dca9c00d6ffa381dcde6c42af886d6fbc6fc9d7c` |
| 5 | `lemma` | [isTransitiveRel_univ](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/istransitiverel-univ.md) | 77 | `result-track:2a5619f8028a4785b49e00daeccbda1b7cd26e24aed9d6aed8b08c86cf443991` |
| 6 | `lemma` | [isTransitiveRel_singleton](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/istransitiverel-singleton.md) | 80 | `result-track:c575c6053b3954d4057067c4b61322c0a0b0ffd4d9284f893db1a9af6eaee785` |
| 7 | `lemma` | [IsTransitiveRel.inter](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/istransitiverel-inter.md) | 83 | `result-track:ce5c19079a4a485bc8769b3afa7babdfd746c18785bdc71e8fadfd1b50167c5b` |
| 8 | `lemma` | [IsTransitiveRel.iInter](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/istransitiverel-iinter.md) | 87 | `result-track:91e092517f14ace9cd174f02d5f9824a92a742423baf915b3f55c93e45fee6b2` |
| 9 | `lemma` | [IsTransitiveRel.sInter](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/istransitiverel-sinter.md) | 95 | `result-track:5388764a9c1d013b1bf320f468b512124845433a42e42f3012ec4ce4f0dc7c03` |
| 10 | `lemma` | [IsTransitiveRel.preimage_prodMap](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/istransitiverel-preimage-prodmap.md) | 100 | `result-track:486c9baa536b4f72d255cfd24dcb55b101e864eb7606cc73ab73ce6c1276d49b` |
| 11 | `lemma` | [IsTransitiveRel.symmetrizeRel](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/istransitiverel-symmetrizerel.md) | 105 | `result-track:70a90054ccaf8b88b03c6b36eb51d3ec302ea50ceef8fa5f4bb79db9360dbcac` |
| 12 | `lemma` | [IsTransitiveRel.comp_eq_of_idRel_subset](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/istransitiverel-comp-eq-of-idrel-subset.md) | 110 | `result-track:fac2b32b910fdd6291283c4bd099dec9f32bfb1162f86e6231243d93e310313d` |
| 13 | `lemma` | [IsTransitiveRel.ball_subset_of_mem](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/istransitiverel-ball-subset-of-mem.md) | 116 | `result-track:f19552549ef50b9ec9b56ae336e25a76059bb6a44d2b0a499780c52359a20290` |
| 14 | `lemma` | [UniformSpace.ball_eq_of_mem_of_isSymmetricRel_of_isTransitiveRel](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/uniformspace-ball-eq-of-mem-of-issymmetricrel-of-istransitiverel.md) | 121 | `result-track:532db6a0557efb8c0639bd9e424a45812b61d8d1132c0d34f7277c0072788281` |
| 15 | `class` | [IsUltraUniformity](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/isultrauniformity.md) | 132 | `declaration-track:70c08f42ad70b5ea46cf9481ee2b55e6688b87f273f2d85da1bbad2fbe201726` |
| 16 | `lemma` | [IsUltraUniformity.mk_of_hasBasis](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/isultrauniformity-mk-of-hasbasis.md) | 136 | `result-track:6abfc45e2f5b63727674cec56b66afd67422771579b372b2dccdcac250933635` |
| 17 | `lemma` | [Uniform Space Ultra Basic Namespaced](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/isopen-ball-of-mem-uniformity.md) | 146 | `result-track:2ed9be749bcd3897bf5e43027c11e07e932ac38c8c83ccc38ab300ef4768004c` |
| 18 | `lemma` | [isClosed_ball_of_isSymmetricRel_of_isTransitiveRel_of_mem_uniformity](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/isclosed-ball-of-issymmetricrel-of-istransitiverel-of-mem-uniformity.md) | 153 | `result-track:de6e186595fcb107ee5ffb103c326c61f5ee178a9e19fba2fd484f20e9d254ea` |
| 19 | `lemma` | [isClopen_ball_of_isSymmetricRel_of_isTransitiveRel_of_mem_uniformity](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/isclopen-ball-of-issymmetricrel-of-istransitiverel-of-mem-uniformity.md) | 160 | `result-track:37f129f7793deb80e87e2e2297f06e5a553573235657f083198da72e0ed796c7` |
| 20 | `lemma` | [nhds_basis_clopens](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/nhds-basis-clopens.md) | 169 | `result-track:942dd0e2a76b2a613d8bd3fadd1dc4e6a6402db1746303cdf4c3df7a063da6ce` |
| 21 | `lemma` | [Uniform Space Ultra Basic Namespaced](../../../../GeneralTopology/UniformSpaceUltraBasicNamespaced.lean/declarations/istopologicalbasis-clopens.md) | 181 | `result-track:cc12a68f6bfabd8863433d0e2a14ca57105ae5bd5f8adf06deba7b6fe962dbc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bcfe9a31bc93b43821fdb9b2495c8b28e5280ea8862adc650e36f0dd3033591e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant0bbd5cd5a0530b004e4c3ce134c2b2a4b0a4707550c4e4e1be1394d467d3f137.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant0bbd5cd5a0530b004e4c3ce134c2b2a4b0a4707550c4e4e1be1394d467d3f137.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
