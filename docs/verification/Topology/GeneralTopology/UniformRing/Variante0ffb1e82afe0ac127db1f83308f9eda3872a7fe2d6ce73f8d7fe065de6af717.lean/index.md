# Verification target: GRWTSK.Topology.GeneralTopology.UniformRing.Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5b263a387f1df4795670a266a730dc7ff61c9c9",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5b263a387f1df4795670a266a730dc7ff61c9c9`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.GroupCompletion` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Ideal` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [one](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/one--ad341086ea6cef7042eb3c50.md) | 55 | `declaration-track:ad341086ea6cef7042eb3c50cfcd60220ecb3014fff1b9ee46bb2bdad3d97f2e` |
| 2 | `instance` | [mul](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/mul--dab8635ff5b430d5c09d359f.md) | 58 | `declaration-track:dab8635ff5b430d5c09d359f2f49a4692a44852ed21b9da341da855dfd1f07df` |
| 3 | `theorem` | [coe_one](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/coe-one--62382c15348263e3c6562950.md) | 62 | `result-track:62382c15348263e3c65629501ef9714e9eac3b6c60636ad1e5945b7a8f78373c` |
| 4 | `theorem` | [coe_mul](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/coe-mul--480dd9799b2fa1a3594e6f11.md) | 70 | `result-track:480dd9799b2fa1a3594e6f11b2d3ec3cf9ee43b16bb27acf3e29f92fede0efad` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/instance--67c216cdeb720b0f49394839.md) | 76 | `declaration-track:67c216cdeb720b0f49394839769ad42d1e1831fc2f2f9b8e3e875642cb467cc6` |
| 6 | `theorem` | [continuous_mul](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/continuous-mul--928927989e03983f31337e2b.md) | 84 | `result-track:928927989e03983f31337e2b6190b1a175a33c24b74edbcdef980dd6618fdf31` |
| 7 | `theorem` | [Continuous.mul](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/continuous-mul--15d2db928a75234dd45bbbda.md) | 88 | `result-track:15d2db928a75234dd45bbbdaef4206c59a51dec7a22df981a3c250a2e46b1a52` |
| 8 | `instance` | [ring](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/ring--6556d6f0201001133928a7da.md) | 92 | `declaration-track:6556d6f0201001133928a7da7224e9fa6a5be1fb005dccffc8118dbdaad24f38` |
| 9 | `def` | [coeRingHom](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/coeringhom--a609fe6659896719020804e3.md) | 140 | `declaration-track:a609fe6659896719020804e378274a3f49a143911b9bd73f1843bdd4d1f5ddd0` |
| 10 | `theorem` | [continuous_coeRingHom](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/continuous-coeringhom--c6d52c017e0e3c76747e0e4a.md) | 147 | `result-track:c6d52c017e0e3c76747e0e4ab5261d5702a4425c1e9b49242300ffbe6448b79f` |
| 11 | `def` | [extensionHom](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/extensionhom--fd610efc6e1691fe994c688f.md) | 154 | `declaration-track:fd610efc6e1691fe994c688fa5d3877c3d42904bb3f18ec4568ebef240835a4e` |
| 12 | `theorem` | [extensionHom_coe](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/extensionhom-coe--64e16021c3d758be7eab2c3e.md) | 176 | `result-track:64e16021c3d758be7eab2c3eb8e313e99004b56145bb701c5000b5854d381d01` |
| 13 | `instance` | [topologicalRing](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/topologicalring--e4f1af244c97dbfbc2325074.md) | 181 | `declaration-track:e4f1af244c97dbfbc23250749742b13b69e4d8b3d0296541358bf793d959dc8c` |
| 14 | `def` | [mapRingHom](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/mapringhom--d2d504c218b2c876f9273b74.md) | 186 | `declaration-track:d2d504c218b2c876f9273b74f3fbae278456fe6f4a38e992b74a0b8cfb94def6` |
| 15 | `theorem` | [map_smul_eq_mul_coe](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/map-smul-eq-mul-coe--0987c9dc8a8b04af7cb0ce0d.md) | 195 | `result-track:0987c9dc8a8b04af7cb0ce0df322601cfb29b8091784cb3792324d096d465a20` |
| 16 | `instance` | [algebra](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/algebra--3b84cf7425222d3274a60e38.md) | 202 | `declaration-track:3b84cf7425222d3274a60e38a3dfdbd038d6a02f91cee4d25f699822c67ae67a` |
| 17 | `theorem` | [algebraMap_def](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/algebramap-def--15ac8c91547a86c719126d02.md) | 210 | `result-track:15ac8c91547a86c719126d02c5436a869d02d2c17d99bf1982341e044f79d68d` |
| 18 | `instance` | [commRing](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/commring--375a46e3d2e6cebca47c86ad.md) | 220 | `declaration-track:375a46e3d2e6cebca47c86add7c18f3054e267672efeb002b9cd34d9808d7498` |
| 19 | `instance` | [algebra'](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/algebra--e2d2c80db5b25f4b96caeac7.md) | 228 | `declaration-track:e2d2c80db5b25f4b96caeac7149bd30281b66f7fae5e4fe5abe9da56adf9a3f9` |
| 20 | `theorem` | [inseparableSetoid_ring](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/inseparablesetoid-ring--6d5c66aaedcd7aad183897e6.md) | 239 | `result-track:6d5c66aaedcd7aad183897e6d66a5aa67f473ff9c46d5700195f1f5b060a4464` |
| 21 | `def` | [sepQuotHomeomorphRingQuot](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/sepquothomeomorphringquot--6639da1b89cdb4e9db83524d.md) | 247 | `declaration-track:6639da1b89cdb4e9db83524d47b75162d0cbe3b0b9acb7aaeb331837a7a08ec9` |
| 22 | `instance` | [commRing](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/commring--5acb6e17176857e8fe06dfc2.md) | 255 | `declaration-track:5acb6e17176857e8fe06dfc29b27d15a54bb8953e548a990ae165f5b298bd192` |
| 23 | `def` | [sepQuotRingEquivRingQuot](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/sepquotringequivringquot--960d6965631c11a7a3df5774.md) | 262 | `declaration-track:960d6965631c11a7a3df577497ea4f4868ca1b98e4b2fd5ba715c56c8517a925` |
| 24 | `instance` | [topologicalRing](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/topologicalring--912c890e694a67d50829ffd3.md) | 266 | `declaration-track:912c890e694a67d50829ffd352701dd13427afc26e06da3cf679358ae4fbf374` |
| 25 | `def` | [IsDenseInducing.extendRingHom](../../../../../mathematics/Topology/GeneralTopology/UniformRing/Variante0ffb1e82afe0ac127db1f83308f9eda3872a7fe2d6ce73f8d7fe065de6af717.lean/declarations/isdenseinducing-extendringhom--ec0b2571832472c0c685ba06.md) | 286 | `declaration-track:ec0b2571832472c0c685ba06cb6149159911f68912c84a325841a5da39a4b2e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
