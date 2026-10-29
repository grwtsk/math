# Verification target: Inv Submonoid Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4ec3d6c2dd7deb2a96fa202f0bd60a90f0160eb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/InvSubmonoid/Variante3e7ba11ca5af619e1ec701333fb9661f338072577dde8c65bed78bc1426dcb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/InvSubmonoidPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/InvSubmonoidPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4ec3d6c2dd7deb2a96fa202f0bd60a90f0160eb`.

Source path: `GRWTSK/Algebra/GroupTheory/InvSubmonoid/Variante3e7ba11ca5af619e1ec701333fb9661f338072577dde8c65bed78bc1426dcb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/InvSubmonoid/Variante3e7ba11ca5af619e1ec701333fb9661f338072577dde8c65bed78bc1426dcb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invSubmonoid](../../../../CommutativeAlgebra/InvSubmonoidPublic.lean/declarations/invsubmonoid.md) | 42 | `declaration-track:a8938426197d28f3ca92ebb08fb3bb86ec971500466449b52f2dbee5dfc18511` |
| 2 | `theorem` | [submonoid_map_le_is_unit](../../../../CommutativeAlgebra/InvSubmonoidPublic.lean/declarations/submonoid-map-le-is-unit.md) | 47 | `result-track:8691173114c875737b2527b151076c82b25555da8995d01c36f9209db5c0bc8f` |
| 3 | `abbrev` | [equivInvSubmonoid](../../../../CommutativeAlgebra/InvSubmonoidPublic.lean/declarations/equivinvsubmonoid.md) | 52 | `declaration-track:aa27cce29338f3b56e8a84d7d4f96e359b95b65ed82614c4dfae844224d00a94` |
| 4 | `def` | [toInvSubmonoid](../../../../CommutativeAlgebra/InvSubmonoidPublic.lean/declarations/toinvsubmonoid.md) | 56 | `declaration-track:2286475481d97f62bd36f6e8821d6e4efa778413a3e041cf143c50264f5953b6` |
| 5 | `theorem` | [toInvSubmonoid_surjective](../../../../CommutativeAlgebra/InvSubmonoidPublic.lean/declarations/toinvsubmonoid-surjective.md) | 59 | `result-track:875ef7c9950f5935ea81f963b6640613a10238a63b9cadc912f3efbca71ddb9c` |
| 6 | `theorem` | [toInvSubmonoid_mul](../../../../CommutativeAlgebra/InvSubmonoidPublic.lean/declarations/toinvsubmonoid-mul.md) | 64 | `result-track:7f0e28b483c70c0cb7a23b5e38ae344e137564d1a97a0d6241d50144c2d00911` |
| 7 | `theorem` | [mul_toInvSubmonoid](../../../../CommutativeAlgebra/InvSubmonoidPublic.lean/declarations/mul-toinvsubmonoid.md) | 68 | `result-track:1ea9b55a37e78a9df3d1f38608c1303c11062f4780fce20a420d6ed4e12d1bb3` |
| 8 | `theorem` | [smul_toInvSubmonoid](../../../../CommutativeAlgebra/InvSubmonoidPublic.lean/declarations/smul-toinvsubmonoid.md) | 72 | `result-track:9d54b6cf15cecab3b4a6781601014e2da53934945288b0b90cb5cdbfd6b217a6` |
| 9 | `theorem` | [surj'](../../../../CommutativeAlgebra/InvSubmonoidPublic.lean/declarations/surj.md) | 80 | `result-track:9d1ba8fb1d33c0930e20f765dbad3b4ef8bb02ab71bf88fd5758265cb39cdb43` |
| 10 | `theorem` | [toInvSubmonoid_eq_mk'](../../../../CommutativeAlgebra/InvSubmonoidPublic.lean/declarations/toinvsubmonoid-eq-mk.md) | 89 | `result-track:d4ffe3e9ee3b5eee5b9fa2a3e71ea1b47400d9058966038fa6ef3c202e4672aa` |
| 11 | `theorem` | [mem_invSubmonoid_iff_exists_mk'](../../../../CommutativeAlgebra/InvSubmonoidPublic.lean/declarations/mem-invsubmonoid-iff-exists-mk.md) | 93 | `result-track:b8455399fad4835fb85c8b4889dd5d4da348b7af09c98395b97186c859c9f522` |
| 12 | `theorem` | [span_invSubmonoid](../../../../CommutativeAlgebra/InvSubmonoidPublic.lean/declarations/span-invsubmonoid.md) | 101 | `result-track:91bebdd0238be32dc71e11098abe5e1e81fd59b7963b91c55df1a312c1d345b6` |
| 13 | `theorem` | [finiteType_of_monoid_fg](../../../../CommutativeAlgebra/InvSubmonoidPublic.lean/declarations/finitetype-of-monoid-fg.md) | 107 | `result-track:8b1c918ac1730cd072386c5b79c474ffa8ec509139f8537d463bad11166f1c72` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/InvSubmonoidPublic.lean/declarations/instance.md) | 118 | `declaration-track:def13a4297b4c30ef212cc6805201ca2a615145342df48d65a9cedeac1ca9514` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=120beb383a219bcc4c5c3ef7161f8a9f8b336462c666114a5ad2a35c48b992ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/InvSubmonoid/Variante3e7ba11ca5af619e1ec701333fb9661f338072577dde8c65bed78bc1426dcb6.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/InvSubmonoid/Variante3e7ba11ca5af619e1ec701333fb9661f338072577dde8c65bed78bc1426dcb6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
