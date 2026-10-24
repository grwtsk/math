# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2eeb1e1449bb1463e9d16e4ca7120d206885f7d2",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2eeb1e1449bb1463e9d16e4ca7120d206885f7d2`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Analysis.Filter` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyFinite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Ctop](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/ctop--9ccb6d1b9118e3215e1ca233.md) | 33 | `declaration-track:9ccb6d1b9118e3215e1ca23337b0e198edbd3c6c860011dcb028c9920c026e51` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/instance--617cd837bee9d9e3c8e28181.md) | 43 | `declaration-track:617cd837bee9d9e3c8e281816d1458765fe9ad1780b148dfc217843c64100a77` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/instance--ecadef18066836835c016898.md) | 57 | `declaration-track:ecadef18066836835c0168980be93a05710bd3e1300e80aeb5ebb28235da2c9a` |
| 4 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/coe-mk--db689360703f312de33cd222.md) | 60 | `result-track:db689360703f312de33cd2222de4685772abb48f7547a87679c30aba8514f5f2` |
| 5 | `def` | [ofEquiv](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/ofequiv--f7aa34af18aa83b10e257f97.md) | 63 | `declaration-track:f7aa34af18aa83b10e257f97e0cd001c805b1b6e703d45ea494678fcbe5ac4f4` |
| 6 | `theorem` | [ofEquiv_val](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/ofequiv-val--fbdea436b1370bb1d9505883.md) | 73 | `result-track:fbdea436b1370bb1d950588386d7dc982e62839edc3748e3af731882fd053b00` |
| 7 | `def` | [toTopsp](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/totopsp--c49f1a6a3dffef801c3b84cc.md) | 79 | `declaration-track:c49f1a6a3dffef801c3b84cc0d4ec8f5d1ba7d3cc300b83fb1af0c9e9a413cd5` |
| 8 | `theorem` | [toTopsp_isTopologicalBasis](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/totopsp-istopologicalbasis--433e66b8e3b7016a00e775eb.md) | 81 | `result-track:433e66b8e3b7016a00e775ebd77d181a7d8f253fd4446e9c5716aabd527a62a6` |
| 9 | `theorem` | [mem_nhds_toTopsp](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/mem-nhds-totopsp--12e68d6e30d69f67fc567ffb.md) | 89 | `result-track:12e68d6e30d69f67fc567ffb277fb1f82cd4f02b91c2f5be32bf495064f9e75e` |
| 10 | `structure` | [Ctop.Realizer](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/ctop-realizer--418bc1ecc27b80059814bab5.md) | 99 | `declaration-track:418bc1ecc27b80059814bab5ca142cb758be27089abb1e86cba895db062a3538` |
| 11 | `def` | [Ctop.toRealizer](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/ctop-torealizer--2efdb561d2eb65521a00ed3c.md) | 107 | `declaration-track:2efdb561d2eb65521a00ed3c9cb58f2a5c32ffdcb0141fc78d10c5e598b26cf6` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/instance--99f8fec9d122c46fa0ef9813.md) | 110 | `declaration-track:99f8fec9d122c46fa0ef9813a6c0c4b7c39c175a0061c98539be8bef0ab744a8` |
| 13 | `theorem` | [is_basis](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/is-basis--38aba221ea17cd9c3df88960.md) | 115 | `result-track:38aba221ea17cd9c3df8896015b3ce16b7d6d96b45a1ce3340442c1beb0adb33` |
| 14 | `theorem` | [mem_nhds](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/mem-nhds--9728196fd0639460c7ec1f78.md) | 119 | `result-track:9728196fd0639460c7ec1f7851abaee80f1b03b44d9bfcd8bbd97139be84c37c` |
| 15 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/isopen-iff--a109ad49455f13ec6fb9e4f5.md) | 123 | `result-track:a109ad49455f13ec6fb9e4f5b0932280d78676e8cb67e4146a1ba48abfcdd162` |
| 16 | `theorem` | [isClosed_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/isclosed-iff--a46d27ea76626c0a3c7784a9.md) | 127 | `result-track:a46d27ea76626c0a3c7784a9e521e0292bf2c61598b3895e12af0ec3c9869e6a` |
| 17 | `theorem` | [mem_interior_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/mem-interior-iff--ce81325e4c6766d258dbfc6e.md) | 136 | `result-track:ce81325e4c6766d258dbfc6ee93c718df9459ce1fc7cbbadc593423da8bce377` |
| 18 | `theorem` | [isOpen](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/isopen--930e2fec72fdb2ee65790e1e.md) | 140 | `result-track:930e2fec72fdb2ee65790e1e5ea0972c98840c806b44060419974ae9198d2a3d` |
| 19 | `theorem` | [ext'](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/ext--9bd43b2fc0815ad9bc2718fe.md) | 143 | `result-track:9bd43b2fc0815ad9bc2718fe9e2184e6a4fe121599941d375dcdc26d8435466c` |
| 20 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/ext--83266cb8796a56eeefd08da2.md) | 149 | `result-track:83266cb8796a56eeefd08da23d840c69824b730237911be3071744f8851cad68` |
| 21 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/id--a360b0b9f93cd90e8daf16ba.md) | 156 | `declaration-track:a360b0b9f93cd90e8daf16badbbc1d8cc2b0dd2a38f126bcff8143b86b2eb250` |
| 22 | `def` | [ofEquiv](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/ofequiv--5967079ccc8aa56c6b251435.md) | 169 | `declaration-track:5967079ccc8aa56c6b251435a40c9e546fe1077e7bc19fcb7ce3e982bb2b7af9` |
| 23 | `theorem` | [ofEquiv_σ](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/ofequiv--76bd3b3ffe7ebd1fa525bfdf.md) | 176 | `result-track:76bd3b3ffe7ebd1fa525bfdf7578d467b2167c7f5187a8c4b86a5704ba1b6f9e` |
| 24 | `theorem` | [ofEquiv_F](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/ofequiv-f--17be7afb2ba59a6957aa8291.md) | 179 | `result-track:17be7afb2ba59a6957aa82919fdbfa92ecf49b53287ea58c6ba73034aab3ebeb` |
| 25 | `def` | [nhds](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/nhds--9f4a2776a6a52e22c6109c75.md) | 183 | `declaration-track:9f4a2776a6a52e22c6109c75377de55497cc2426526a7e9ad91a953bfc5f48a3` |
| 26 | `theorem` | [nhds_σ](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/nhds--b4e24e7b18041e8024de541f.md) | 197 | `result-track:b4e24e7b18041e8024de541f44c1a20850caabc969700a1615f8f914d04f6c4d` |
| 27 | `theorem` | [nhds_F](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/nhds-f--9c78d4038436eb9ccd0a79fd.md) | 200 | `result-track:9c78d4038436eb9ccd0a79fdf637d603ba89360ede1b68eead4582267389509d` |
| 28 | `theorem` | [tendsto_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/tendsto-nhds-iff--68e8e8d6e48d964bbb3dd538.md) | 202 | `result-track:68e8e8d6e48d964bbb3dd538cb0672b7cd701abb3f9c5c0f08ecee6f031b25dc` |
| 29 | `structure` | [LocallyFinite.Realizer](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/locallyfinite-realizer--2e893d5c8fc4c0391427d599.md) | 211 | `declaration-track:2e893d5c8fc4c0391427d5999f3fe752404db843fb3116afd4015214af4ecf9e` |
| 30 | `theorem` | [LocallyFinite.Realizer.to_locallyFinite](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/locallyfinite-realizer-to-locallyfinite--0d7ae145834c26b5753dfd51.md) | 215 | `result-track:0d7ae145834c26b5753dfd5134236f294362b616e556b9ea93ddd9fe68535933` |
| 31 | `theorem` | [locallyFinite_iff_exists_realizer](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/locallyfinite-iff-exists-realizer--790d11e49eb29f0758266390.md) | 219 | `result-track:790d11e49eb29f07582663908caaf40ef55d398a7cc070f4751e26cbbcfdbe44` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/instance--1f43e1dbd6ee501fa51e63de.md) | 234 | `declaration-track:1f43e1dbd6ee501fa51e63de65fa174463cd1598e4c43288b1cc2035eda019b9` |
| 33 | `def` | [Compact.Realizer](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/compact-realizer--a6a4db42e8adc028982567ab.md) | 240 | `declaration-track:a6a4db42e8adc028982567ab0895bead20ec85f7218965a1cfde5906ccb299c1` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/declarations/instance--7f64c9c1b0c3f788c49063da.md) | 243 | `declaration-track:7f64c9c1b0c3f788c49063da68efd12c4201f2400306ad81e230eda87768504c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
