# Verification target: Init Tail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79b87d594512e2494926dbaa201fe062eac5cfcd",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InitTail/Variant03ba0dd4b2a7fec2a52fe2641951b6fca10ef4dfb8a8ad93d680c528454bc6bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/InitTail.lean/index.md) · [Full source](../../../../CommutativeAlgebra/InitTail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79b87d594512e2494926dbaa201fe062eac5cfcd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InitTail/Variant03ba0dd4b2a7fec2a52fe2641951b6fca10ef4dfb8a8ad93d680c528454bc6bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InitTail/Variant03ba0dd4b2a7fec2a52fe2641951b6fca10ef4dfb8a8ad93d680c528454bc6bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.IsPoly` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [select](../../../../CommutativeAlgebra/InitTail.lean/declarations/select.md) | 55 | `declaration-track:e03c6b57480d72705a1a4c2d4cc400ef3c6bf032a277f71e2a464d80c88e91ae` |
| 2 | `def` | [selectPoly](../../../../CommutativeAlgebra/InitTail.lean/declarations/selectpoly.md) | 65 | `declaration-track:76d259e81121006aa5b24a0e3ea5e72973030f8c77fc127697ed6966a1d7717c` |
| 3 | `theorem` | [coeff_select](../../../../CommutativeAlgebra/InitTail.lean/declarations/coeff-select.md) | 68 | `result-track:9cfcafe1d7ea4e27a9eeb60f4434f625c58cea95506dccd43d61b198a37c18e2` |
| 4 | `instance` | [select_isPoly](../../../../CommutativeAlgebra/InitTail.lean/declarations/select-ispoly.md) | 76 | `declaration-track:8325b215f6a6836632a886d56228454a28c9ac20fa4f91423b193e53d39a2b2a` |
| 5 | `theorem` | [select_add_select_not](../../../../CommutativeAlgebra/InitTail.lean/declarations/select-add-select-not.md) | 84 | `result-track:3d6a8239227154fb179d8a442fa1e0acd8f465b0405d7c9230463268fee79467` |
| 6 | `theorem` | [coeff_add_of_disjoint](../../../../CommutativeAlgebra/InitTail.lean/declarations/coeff-add-of-disjoint.md) | 107 | `result-track:0452998d946c26435512be53fd740d72b4723f57a8a2c4d198f5eb8dabe95e63` |
| 7 | `def` | [init](../../../../CommutativeAlgebra/InitTail.lean/declarations/init.md) | 138 | `declaration-track:f64623dcbbfd51a960cf0ac0ae01565ee8832ec78c8ef0df65c9f6ca6a77752a` |
| 8 | `def` | [tail](../../../../CommutativeAlgebra/InitTail.lean/declarations/tail.md) | 144 | `declaration-track:68281a0c42cd921125d8762c4d814490ccda61b505b4417c371a60413a6d301d` |
| 9 | `theorem` | [init_add_tail](../../../../CommutativeAlgebra/InitTail.lean/declarations/init-add-tail.md) | 148 | `result-track:0e65011e64b04572831038ecb968c279cfb374c9db6bc2cdc806fc4c47dfb642` |
| 10 | `syntax` | [(anonymous)](../../../../CommutativeAlgebra/InitTail.lean/declarations/syntax.md) | 156 | `declaration-track:63a852fe945785e54b60e3ec54160d084013b601c2fbb0abb2f1e2976f755237` |
| 11 | `elab_rules` | [(anonymous)](../../../../CommutativeAlgebra/InitTail.lean/declarations/elab-rules.md) | 161 | `declaration-track:5673261440e235f7a646f5363ff79c48b20a7f6f15494b39625c5744dcf18ac8` |
| 12 | `theorem` | [init_init](../../../../CommutativeAlgebra/InitTail.lean/declarations/init-init.md) | 187 | `result-track:b175810419c3da8417c6bb5d2824f96b35ce8f1cd2790e579cfc24d32d4ca3af` |
| 13 | `theorem` | [init_add](../../../../CommutativeAlgebra/InitTail.lean/declarations/init-add.md) | 196 | `result-track:d9da879bbd4a3063ca3100be93c3bb69364ddf16ad60fe90aee39cc34db7ce5e` |
| 14 | `theorem` | [init_mul](../../../../CommutativeAlgebra/InitTail.lean/declarations/init-mul.md) | 199 | `result-track:8cd7e756748a49457ece4e0c47fdd5c4d422fcef594eab92274a27314335a86f` |
| 15 | `theorem` | [init_neg](../../../../CommutativeAlgebra/InitTail.lean/declarations/init-neg.md) | 202 | `result-track:d7f2d677912837a8f17aedf7800af33edcff979fb076832bebb86b7714b30941` |
| 16 | `theorem` | [init_sub](../../../../CommutativeAlgebra/InitTail.lean/declarations/init-sub.md) | 205 | `result-track:7ec26da18d87d3b42f61d8aa1eb921b00e70c474c6a9c56ba6e2f0570e5ab71b` |
| 17 | `theorem` | [init_nsmul](../../../../CommutativeAlgebra/InitTail.lean/declarations/init-nsmul.md) | 208 | `result-track:6a8ad49ac6349b2843cdca6b53dcf4f411406c94abff89c7f50cd1170bc516a1` |
| 18 | `theorem` | [init_zsmul](../../../../CommutativeAlgebra/InitTail.lean/declarations/init-zsmul.md) | 211 | `result-track:507742ca5ba90d28a5f82563741f675aa0b2e44d26b8621aca75da4855e20b74` |
| 19 | `theorem` | [init_pow](../../../../CommutativeAlgebra/InitTail.lean/declarations/init-pow.md) | 214 | `result-track:109d31d56768bed3fc91fc10e4eeb4f5ebb508fe82a1686108e43b37286eeab9` |
| 20 | `theorem` | [init_isPoly](../../../../CommutativeAlgebra/InitTail.lean/declarations/init-ispoly.md) | 223 | `result-track:b98b35041d946f3553107579b1dda9de8fc61e8da8f3d0f741bc984f57e48719` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2f308fb2a60eb01ec6e17bf29dc70312db82c5db4b1d61be0c9ebc423688cca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/InitTail/Variant03ba0dd4b2a7fec2a52fe2641951b6fca10ef4dfb8a8ad93d680c528454bc6bc.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/InitTail/Variant03ba0dd4b2a7fec2a52fe2641951b6fca10ef4dfb8a8ad93d680c528454bc6bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
