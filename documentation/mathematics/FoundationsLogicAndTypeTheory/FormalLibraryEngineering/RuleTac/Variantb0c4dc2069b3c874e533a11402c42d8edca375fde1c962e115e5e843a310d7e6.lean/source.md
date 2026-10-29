# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleTac.Variantb0c4dc2069b3c874e533a11402c42d8edca375fde1c962e115e5e843a310d7e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eed2f0282f37dcfe674d20b5354957c07e2fe36c` · SHA-256 `b0c4dc2069b3c874e533a11402c42d8edca375fde1c962e115e5e843a310d7e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleTac.Apply
public import Aesop.RuleTac.Basic
public import Aesop.RuleTac.Cases
public import Aesop.RuleTac.Forward
public import Aesop.RuleTac.Preprocess
public import Aesop.RuleTac.Tactic
public import Aesop.RuleTac.Descr

public section

open Lean

namespace Aesop.RuleTacDescr

protected def run : RuleTacDescr → RuleTac
  | apply t md => RuleTac.apply t md
  | constructors cs md => RuleTac.applyConsts cs md
  | forward t immediate clear => RuleTac.forward t immediate clear
  | cases target md isRecursiveType ctorNames =>
    RuleTac.cases target md isRecursiveType ctorNames
  | tacticM decl => RuleTac.tacticM decl
  | singleRuleTac decl => RuleTac.singleRuleTac decl
  | ruleTac decl => RuleTac.ruleTac decl
  | tacticStx stx => RuleTac.tacticStx stx
  | tacGen decl => RuleTac.tacGen decl
  | preprocess => RuleTac.preprocess
  | forwardMatches m => RuleTac.forwardMatches m

end RuleTacDescr
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65c2a9381a3a3fe272f06dfc9488e43efde72fd74e13cb45636fae4cfc34163f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleTac/Variantb0c4dc2069b3c874e533a11402c42d8edca375fde1c962e115e5e843a310d7e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
