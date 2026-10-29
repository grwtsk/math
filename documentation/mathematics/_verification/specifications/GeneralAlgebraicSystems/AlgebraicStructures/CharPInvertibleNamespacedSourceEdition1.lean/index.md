# Verification target: Char PInvertible Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c4355134cd7ecedb4ee1e28d12b1728930131ca",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Invertible/Variante77dac63a65fc5cae8cfaa579258cb122d1bb9c4ba0d542920e00efc92823e6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPInvertibleNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPInvertibleNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c4355134cd7ecedb4ee1e28d12b1728930131ca`.

Source path: `GRWTSK/Algebra/Invertible/Variante77dac63a65fc5cae8cfaa579258cb122d1bb9c4ba0d542920e00efc92823e6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Invertible/Variante77dac63a65fc5cae8cfaa579258cb122d1bb9c4ba0d542920e00efc92823e6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Invertible` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.GCD` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Commute` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [CharP.intCast_mul_natCast_gcdA_eq_gcd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPInvertibleNamespacedSourceEdition1.lean/declarations/charp-intcast-mul-natcast-gcda-eq-gcd.md) | 36 | `result-track:0187fbfd8c3f4bf61f3df7bb380fa3baab206c8850431a801671860f6c0c057a` |
| 2 | `theorem` | [CharP.natCast_gcdA_mul_intCast_eq_gcd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPInvertibleNamespacedSourceEdition1.lean/declarations/charp-natcast-gcda-mul-intcast-eq-gcd.md) | 41 | `result-track:22a9c417c5f251e68d1dcc4abc432b75330dcaa0dfd53591c78df2c8d03f5ea8` |
| 3 | `def` | [invertibleOfCoprime](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPInvertibleNamespacedSourceEdition1.lean/declarations/invertibleofcoprime.md) | 47 | `declaration-track:98e5bfe92d55fcadfea5840c055533667fadc2d1956944644331f5921a823eb0` |
| 4 | `theorem` | [invOf_eq_of_coprime](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPInvertibleNamespacedSourceEdition1.lean/declarations/invof-eq-of-coprime.md) | 53 | `result-track:1a3ae96cb45ceddafb4329851989d562c78a7464a13b77a66fe529b9ca267226` |
| 5 | `theorem` | [CharP.isUnit_natCast_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPInvertibleNamespacedSourceEdition1.lean/declarations/charp-isunit-natcast-iff.md) | 58 | `result-track:b948eb7899f6b89a655110eb1f5aae4a38aa8eea2cb868889422e61bcc3813f3` |
| 6 | `theorem` | [CharP.isUnit_ofNat_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPInvertibleNamespacedSourceEdition1.lean/declarations/charp-isunit-ofnat-iff.md) | 67 | `result-track:1167925824468ab0dffc8bd3442bfbe24bf068ba32447cc205781f2869a046f5` |
| 7 | `theorem` | [CharP.isUnit_intCast_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPInvertibleNamespacedSourceEdition1.lean/declarations/charp-isunit-intcast-iff.md) | 71 | `result-track:735d763f2d00b68358737ed5f6fc6219f595598e35eb951a526e1bbe392a572e` |
| 8 | `def` | [invertibleOfRingCharNotDvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPInvertibleNamespacedSourceEdition1.lean/declarations/invertibleofringcharnotdvd.md) | 84 | `declaration-track:5807f12136b934b1c1acf5398541f96b7c95e6694d74eab9c32210019544d8fc` |
| 9 | `theorem` | [not_ringChar_dvd_of_invertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPInvertibleNamespacedSourceEdition1.lean/declarations/not-ringchar-dvd-of-invertible.md) | 87 | `result-track:dc2fd470f653d1c2fec2b2b3ba42abc21a20c8c4846a477b52b819b9e9f7fbb5` |
| 10 | `def` | [invertibleOfCharPNotDvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPInvertibleNamespacedSourceEdition1.lean/declarations/invertibleofcharpnotdvd.md) | 93 | `declaration-track:2db5221eedc2cc35ba748c1fa0e2e605f383e97cfd951e00e4e438d4cc908f4f` |
| 11 | `instance` | [invertibleOfPos](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPInvertibleNamespacedSourceEdition1.lean/declarations/invertibleofpos.md) | 98 | `declaration-track:012c6f58f420129016622c3eddc57a1490b48ea1ca960028870f0501c950592b` |
| 12 | `instance` | [invertibleSucc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPInvertibleNamespacedSourceEdition1.lean/declarations/invertiblesucc.md) | 107 | `declaration-track:8521f07bbffbdd92ddfc35b82a250a6bf6e85f518646af1f723e28ab4f59bef2` |
| 13 | `instance` | [invertibleTwo](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPInvertibleNamespacedSourceEdition1.lean/declarations/invertibletwo.md) | 116 | `declaration-track:8cca2068e955fc07f22929a528d35f2916e3b1380b54b7172eaea8a265e96165` |
| 14 | `instance` | [invertibleThree](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CharPInvertibleNamespacedSourceEdition1.lean/declarations/invertiblethree.md) | 119 | `declaration-track:81538e1036bbfd9c939ff70e029c41193c332adc17cd4045b4fa2264d3f3e14d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e179fc350a9180d2c56882924dc5bac48259aa22a201005ca1d452088f1f5fcf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Invertible/Variante77dac63a65fc5cae8cfaa579258cb122d1bb9c4ba0d542920e00efc92823e6a.lean","GRWTSK/_verification/specifications/Algebra/Invertible/Variante77dac63a65fc5cae8cfaa579258cb122d1bb9c4ba0d542920e00efc92823e6a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
