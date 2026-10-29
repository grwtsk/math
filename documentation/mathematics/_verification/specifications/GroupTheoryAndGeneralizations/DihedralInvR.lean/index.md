# Verification target: Dihedral Inv R

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3122d70d863a32297f11865c24e6501b935567af",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Dihedral/Variant04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3122d70d863a32297f11865c24e6501b935567af`.

Source path: `GRWTSK/Algebra/GroupTheory/Dihedral/Variant04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Dihedral/Variant04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Sum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Exponent` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.CardCommute` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DihedralGroup](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/dihedralgroup.md) | 28 | `declaration-track:ba80fca13b873268cadcc237c2f3d58514cab5f1870aa2d5cbc8f5001e598f4f` |
| 2 | `def` | [mul](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/mul.md) | 39 | `declaration-track:4740d021da76bb870f9ca44759af2a4a7c2677fe7046c36f577321be78262239` |
| 3 | `def` | [one](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/one.md) | 47 | `declaration-track:70e3b13d6edd11db743a1f14215371750c29d7fa3dbf2da1e97059dff4d9bef5` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/instance-source-edition-3.md) | 50 | `declaration-track:769e3deec04bdde0d24f27be6c537c445959a01a0e76fe99743cf2a86ff7a937` |
| 5 | `def` | [inv](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/inv.md) | 55 | `declaration-track:98f914890bcbd50b4290f7b56a051877dd5477c2228374c19c36f30b9c3db43b` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/instance-source-edition-2.md) | 61 | `declaration-track:55bf038d1da0571bc2cada56d4e81e59de1e89a6798debc6d33f19c41ff123cd` |
| 7 | `theorem` | [r_mul_r](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/r-mul-r.md) | 80 | `result-track:36c2d64cee844cc973e8f198b966e6904d6b24e55d3fd125d99344929fa462cd` |
| 8 | `theorem` | [r_mul_sr](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/r-mul-sr.md) | 84 | `result-track:b7137359cff6c61047f1e28a5e3c297122ed84e105dafb33987dc68bdd9858a7` |
| 9 | `theorem` | [sr_mul_r](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/sr-mul-r.md) | 88 | `result-track:c6bce1260a6b3d8cd90ebd7837627732e71937260cf3e3fa6556d11213a58a8d` |
| 10 | `theorem` | [sr_mul_sr](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/sr-mul-sr.md) | 92 | `result-track:ddd0dd321008bab9ce855c5e1c4a245ad4605aafee3683a348cbc52e048a766b` |
| 11 | `theorem` | [inv_r](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/inv-r.md) | 96 | `result-track:cabf2d5afb650a17504e4293246e4bb0c2bb6937cd2634cbf5433f554771f049` |
| 12 | `theorem` | [inv_sr](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/inv-sr.md) | 100 | `result-track:2040ad5a128611905477b4735aa00f294c42ee5f0cf956d2ce61f645a9ab3cd7` |
| 13 | `theorem` | [r_zero](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/r-zero.md) | 104 | `result-track:eb74aeb6fc89607c9931a02d7fd0c2f54e732f5dfc6818cc958bd14f3bf0f272` |
| 14 | `theorem` | [one_def](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/one-def.md) | 107 | `result-track:e311e3b507c4a6ffe2d2e5efb78fa8ebb3316a30ff8433d68263f6e0e6a0b736` |
| 15 | `theorem` | [r_pow](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/r-pow.md) | 111 | `result-track:68ccbd252d3ad3a1285828badecde7e99cec40fce9991daa1f6397095ddb4768` |
| 16 | `theorem` | [r_zpow](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/r-zpow.md) | 118 | `result-track:c354bd764087e2fd3c127cb4e0e872de0076126f78553c05f3511dbb27e70ca9` |
| 17 | `def` | [fintypeHelper](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/fintypehelper.md) | 121 | `declaration-track:a764955830504d6abfff7e4e9a9200248dfa1bc628e4c63723280236e7e6002a` |
| 18 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/instance.md) | 133 | `declaration-track:300c7c7399ca1f8698d4508872041bc23a7ee3a9e9bd42febfc2a11d594acac1` |
| 19 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/instance-source-edition-4.md) | 136 | `declaration-track:a99fdc9e809adfc16b3c39cfb512d5c15e7b5b64b0c03e499c9467fc1000a212` |
| 20 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/instance-source-edition-5.md) | 139 | `declaration-track:bcd2e39fffc5787786b2afa1f158a89286837f6c9aa1f3ab4bd5ffdae50d9de3` |
| 21 | `theorem` | [card](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/card.md) | 144 | `result-track:a3434e940cf638006fdb275478e65aa93dedd84e7e32efe8432e8b36521ca155` |
| 22 | `theorem` | [nat_card](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/nat-card.md) | 147 | `result-track:45ea8ff408c4c4f12642f3d0a8ef34ad3751f53bab2d060e08d4418eb99a4b66` |
| 23 | `theorem` | [r_one_pow](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/r-one-pow.md) | 152 | `result-track:47542b33b9fa2f345e16565e63e1dad11fbe08dfebc64efac6f1a3a889754b6a` |
| 24 | `theorem` | [r_one_zpow](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/r-one-zpow.md) | 155 | `result-track:95ee2093d4a814989f8aa7ebd4be8199ce11ac0d4183d9997f3b8960a7c69b04` |
| 25 | `theorem` | [r_one_pow_n](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/r-one-pow-n.md) | 158 | `result-track:6a2279cce63164d48fc8a4045394c991304d03b5b6e26e11d32fc4fe733d7ff4` |
| 26 | `theorem` | [sr_mul_self](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/sr-mul-self.md) | 161 | `result-track:4dfc183d2a687f7103379b0b78d6d73cd1ee89bd519fed7f878a99651cc100c3` |
| 27 | `theorem` | [orderOf_sr](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/orderof-sr.md) | 167 | `result-track:416e327fcc7b033b3cc6396d31f9600a06a28ce3b01fcdc3b98cbb2d843ec30c` |
| 28 | `theorem` | [orderOf_r_one](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/orderof-r-one.md) | 175 | `result-track:75d68510c6476454da9c99bef4bfb60bfcc0bd2f53dbf2fcb3e2fac3eee87361` |
| 29 | `theorem` | [orderOf_r](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/orderof-r.md) | 193 | `result-track:b0d6ae0fd406147a5fd571680201e67a061c4a0487507f605858aaca03dc5063` |
| 30 | `theorem` | [exponent](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/exponent.md) | 197 | `result-track:a21e37b5089354e06cdd0549621bd900d79249915677a2a0c0dae3bfdd01d58d` |
| 31 | `lemma` | [not_commutative](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/not-commutative.md) | 214 | `result-track:8abf672ee60e2eb72c66d0117e73c38374f7977fbf56e1e4974924f7ef4a9c7d` |
| 32 | `lemma` | [commutative_iff](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/commutative-iff.md) | 224 | `result-track:fa7e38399744718b29e12ec51288c4849856a28dd83bacb27384d3da4816c37b` |
| 33 | `lemma` | [not_isCyclic](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/not-iscyclic.md) | 228 | `result-track:5229679cd49aa6731a600f92140d98767faed494537789d5047418c68adb5033` |
| 34 | `lemma` | [isCyclic_iff](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/iscyclic-iff.md) | 233 | `result-track:63210804589b9922bb28b45ed0497e3ee606fede2d4a99cba22350f0d61f4b5b` |
| 35 | `def` | [oddCommuteEquiv](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/oddcommuteequiv.md) | 240 | `declaration-track:b8251bceab18c4f03e05e7887e39d965c7eac82cb46b988fb73b7b1cf852e1cc` |
| 36 | `lemma` | [card_commute_odd](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/card-commute-odd.md) | 282 | `result-track:2fd8a3bc056b3a14cac89e28c862ea2b40ee94f3cbe2cf5facef233796443763` |
| 37 | `lemma` | [card_conjClasses_odd](../../../../GroupTheoryAndGeneralizations/DihedralInvR.lean/declarations/card-conjclasses-odd.md) | 288 | `result-track:cc460d341f2f2e8f3cf71bf5decc9ec399efdc67dc780f77ac5cbe6ad694548a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=efdf25f8692bbe4682a49e14de058faf78fad4342d92798911fe6984592fa33f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Dihedral/Variant04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Dihedral/Variant04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
