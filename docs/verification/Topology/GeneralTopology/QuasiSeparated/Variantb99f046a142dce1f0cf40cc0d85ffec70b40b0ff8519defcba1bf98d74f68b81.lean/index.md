# Verification target: GRWTSK.Topology.GeneralTopology.QuasiSeparated.Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b8363dc1adf0bd064d073e722c54b24197d2b72",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b8363dc1adf0bd064d073e722c54b24197d2b72`.

Source path: `GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.SubsetProperties` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.NoetherianSpace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsQuasiSeparated](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean/declarations/isquasiseparated--32550ac07172f51741a6ed33.md) | 49 | `declaration-track:32550ac07172f51741a6ed33bffdc816c3c691f8f595ddfd0261048048306757` |
| 2 | `class` | [QuasiSeparatedSpace](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean/declarations/quasiseparatedspace--1fac29378fef4400a253c3aa.md) | 57 | `declaration-track:1fac29378fef4400a253c3aa566c36af83f9e5663154771ae40e12c59d145d4f` |
| 3 | `theorem` | [isQuasiSeparated_univ_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean/declarations/isquasiseparated-univ-iff--b9a7d65e1f8fee8fd803e2a5.md) | 63 | `result-track:b9a7d65e1f8fee8fd803e2a522f321233a7102a5f64bfc6251b4cc6266520094` |
| 4 | `theorem` | [isQuasiSeparated_univ](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean/declarations/isquasiseparated-univ--0c64bb50b6bbb9acd88a3242.md) | 69 | `result-track:0c64bb50b6bbb9acd88a32422eda71aa34de94d55b0353012b2c86f5fdfd5d86` |
| 5 | `theorem` | [IsQuasiSeparated.image_of_embedding](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean/declarations/isquasiseparated-image-of-embedding--8fd1cd20e1aa8c1c797b87d1.md) | 74 | `result-track:8fd1cd20e1aa8c1c797b87d1b8051d152bd5c97cbf09ed145a8aee9e12686fa6` |
| 6 | `theorem` | [OpenEmbedding.isQuasiSeparated_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean/declarations/openembedding-isquasiseparated-iff--060922aa36f54211697a2735.md) | 99 | `result-track:060922aa36f54211697a273507817c04732c13838ff7a7bc68debc7420c7ac96` |
| 7 | `theorem` | [isQuasiSeparated_iff_quasiSeparatedSpace](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean/declarations/isquasiseparated-iff-quasiseparatedspace--a07fa4eb410dc55a33a868fb.md) | 109 | `result-track:a07fa4eb410dc55a33a868fbd083fb570d51e665ee8dd5483f786185475f5fcd` |
| 8 | `theorem` | [IsQuasiSeparated.of_subset](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean/declarations/isquasiseparated-of-subset--5c334bb2f8a6abfff9ba89e3.md) | 116 | `result-track:5c334bb2f8a6abfff9ba89e30e50c0993f7023a5e190c0cbde36e6948a22dfa7` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean/declarations/instance--2b6a143d3c2fbc4fd49d9933.md) | 122 | `declaration-track:2b6a143d3c2fbc4fd49d99339bef0c0fdd000432ab460bfb6726a7681ee061f2` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean/declarations/instance--dff70f5be636da4e5c41517b.md) | 126 | `declaration-track:dff70f5be636da4e5c41517b4342fe7edc83432da726097ab293d33ab9584349` |
| 11 | `theorem` | [IsQuasiSeparated.of_quasiSeparatedSpace](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean/declarations/isquasiseparated-of-quasiseparatedspace--03b4d4e9afce3f085cc9a6ca.md) | 131 | `result-track:03b4d4e9afce3f085cc9a6cab12b4c40244705c7a0c028f46a2929e6f6d1a963` |
| 12 | `theorem` | [QuasiSeparatedSpace.of_openEmbedding](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantb99f046a142dce1f0cf40cc0d85ffec70b40b0ff8519defcba1bf98d74f68b81.lean/declarations/quasiseparatedspace-of-openembedding--d3a4f5588a9a8fe879cfb456.md) | 136 | `result-track:d3a4f5588a9a8fe879cfb45638e79fe5ab27cc0edddd7b49de6ea30a2f2baddd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
