# Verification target: Is Poly Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e54d307d77513d6f27f500b7ed5942dc677e13a5",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variante299c3cf17858d662f0aa6f793f343433aa705892235976871d32ba1ec93497f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IsPolyPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IsPolyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e54d307d77513d6f27f500b7ed5942dc677e13a5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variante299c3cf17858d662f0aa6f793f343433aa705892235976871d32ba1ec93497f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsPoly/Variante299c3cf17858d662f0aa6f793f343433aa705892235976871d32ba1ec93497f.lean.json)

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
| 1 | `theorem` | [poly_eq_of_wittPolynomial_bind_eq'](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/poly-eq-of-wittpolynomial-bind-eq.md) | 117 | `result-track:2f808aa571f44dcca1dd5071c9383f8dca02fc4f6c5c8b7631fc38b2f9f98692` |
| 2 | `theorem` | [poly_eq_of_wittPolynomial_bind_eq](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/poly-eq-of-wittpolynomial-bind-eq-source-edition-2.md) | 127 | `result-track:c764cdc3f5346240e9d60c0fed0260c66f3e4da7b37705500afc294c9a792867` |
| 3 | `class` | [IsPoly](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/ispoly.md) | 151 | `declaration-track:3b2682e9c8976e7cb7aa7c7d3ebbf007bb64fdffb44341c802706668409b6fd7` |
| 4 | `instance` | [idIsPoly](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/idispoly.md) | 157 | `declaration-track:ab337eca71ddece3e2e26f4a99f47c48803cef6ead280ca4f964a2ff6491bd8e` |
| 5 | `instance` | [idIsPolyI'](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/idispolyi.md) | 160 | `declaration-track:d45c9f3e444cac424ca913e7f0bb5fccca6708acb7c38387579ea9762e4a012c` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/instance.md) | 165 | `declaration-track:80edc33ae2fddea65124095321fa1aadf65244fdd3e9ee9306bc8aa83095a40b` |
| 7 | `theorem` | [ext](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/ext.md) | 170 | `result-track:19bb6e39b28e4826db81d54124c4847579b224f513d766f9d4b5bc6cb28d41ad` |
| 8 | `instance` | [comp](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/comp.md) | 196 | `declaration-track:e6a98b7b1cae792245774bdf5cd249bb4dde0f560a15593c518638b904265b73` |
| 9 | `class` | [IsPoly₂](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/ispoly-source-edition-2.md) | 217 | `declaration-track:b7aa8c470f3c20e9193e36c46af9a966088228f7176fc792022ba0218cd20b4f` |
| 10 | `instance` | [IsPoly₂.comp](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/ispoly-comp.md) | 225 | `declaration-track:10c786d77dc7a0f91a19fce946a92b8ecd0625dffb0733433545e02cfe150a4f` |
| 11 | `instance` | [IsPoly.comp₂](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/ispoly-comp-source-edition-2.md) | 242 | `declaration-track:87583de3371ce7a0929aa9f02f8741855955013acad676ce3cc1d8ac0460c9b4` |
| 12 | `instance` | [IsPoly₂.diag](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/ispoly-diag.md) | 251 | `declaration-track:c838a8fa22b06401abf41b47c48fbee25e4a2f6b7113eea2ff7b717c5da6dbcc` |
| 13 | `instance` | [negIsPoly](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/negispoly.md) | 261 | `declaration-track:018f8efdf287b9b01e13b37f34b7092c80072e050bce3435bb58baa4c3d93842` |
| 14 | `instance` | [zeroIsPoly](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/zeroispoly.md) | 273 | `declaration-track:550ab69134fe4eb5160a6d37451a85dedfeb48e0288a8692974c4350aa8899b1` |
| 15 | `theorem` | [bind₁_zero_wittPolynomial](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/bind-zero-wittpolynomial.md) | 277 | `result-track:95a9e22da92dbc6fbae86f10a55cbc1d021bbc08284a714ed0ec48f811a496e5` |
| 16 | `def` | [onePoly](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/onepoly.md) | 282 | `declaration-track:fb5a29dc7c59b04d14b1c88bd3763449949ea9ecfa2cb5c7b88c73a6b6543853` |
| 17 | `theorem` | [bind₁_onePoly_wittPolynomial](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/bind-onepoly-wittpolynomial.md) | 286 | `result-track:87a012a79352aeddfd149555995c132fffdc75c9e8ba33137ca3dce1de7498c5` |
| 18 | `instance` | [oneIsPoly](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/oneispoly.md) | 296 | `declaration-track:41022984085352f4bbd44fce5ca597b5d61289395f7a185cca7ebc708c56b811` |
| 19 | `instance` | [addIsPoly₂](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/addispoly.md) | 307 | `declaration-track:63aee7caae852ae9bd8cc5ee09ba2817f63bb4aa352af1a96daaf3911c7dc464` |
| 20 | `instance` | [mulIsPoly₂](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/mulispoly.md) | 311 | `declaration-track:593802a12bd09e90f5d5ca97514fe2a23d8115dde6cc994a9d34950241f70c58` |
| 21 | `theorem` | [IsPoly.map](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/ispoly-map.md) | 315 | `result-track:6520da9658aa8714d39ae2bd07f3bdb21c7e83a621165322c467d685322f5aa3` |
| 22 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/instance-source-edition-2.md) | 327 | `declaration-track:fb62ae70797d5bbebd2576df39eb8259b59f38664f838dcea6f85e7c3cb33c20` |
| 23 | `theorem` | [ext](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/ext-source-edition-2.md) | 330 | `result-track:bcee39a3f8bb6c4b374f6a868aa8a1299269be551398e54191740dd2a337e6e6` |
| 24 | `theorem` | [map](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/map.md) | 357 | `result-track:884374d100304d1225c36109f2ed68111b1ae4a5b8d2e93e1078a388d428c59d` |
| 25 | `syntax` | [(anonymous)](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/syntax-source-edition-2.md) | 382 | `declaration-track:659d3937dc356862b1d3184d6f9a5171a7b37a84f9fdb573ad4d95f1eb2862cf` |
| 26 | `macro_rules` | [(anonymous)](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/macro-rules.md) | 384 | `declaration-track:861f74f8160103829f46c99569252bcd2ce56984dd7a8ed34ed6e5821ce9c87c` |
| 27 | `syntax` | [(anonymous)](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/syntax.md) | 414 | `declaration-track:2e1ba7d974794b38706b940017887c93ba842efc847a548e4ff856f24e1ebfe9` |
| 28 | `def` | [runIntro](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/runintro.md) | 416 | `declaration-track:4841899d6e9d98a44ea54d8f843c60947b25382473c0bbc08719f66772fefc62` |
| 29 | `def` | [getLocalOrIntro](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/getlocalorintro.md) | 424 | `declaration-track:5cf17099ca3cd4f888bd1adee26ff317093a7623d46fe4c91130a93583433fca` |
| 30 | `elab_rules` | [(anonymous)](../../../../CommutativeAlgebra/IsPolyPublic.lean/declarations/elab-rules.md) | 430 | `declaration-track:9c33329538769717fc9292aa16a11bf24bf0fe292b2769447883f345099eba58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a26884c28b5beccf7b83391dd8a9316040837f58e80cc66b037d588b140a157f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variante299c3cf17858d662f0aa6f793f343433aa705892235976871d32ba1ec93497f.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/IsPoly/Variante299c3cf17858d662f0aa6f793f343433aa705892235976871d32ba1ec93497f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
