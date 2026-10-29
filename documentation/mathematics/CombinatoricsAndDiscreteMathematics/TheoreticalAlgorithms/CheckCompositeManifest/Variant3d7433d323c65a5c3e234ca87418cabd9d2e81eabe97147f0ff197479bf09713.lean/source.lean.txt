import CompositeElements.Golden
import CompositeElements.Export

def main (arguments : List String) : IO Unit := do
  match arguments with
  | [output] =>
      IO.FS.writeFile output <|
        "{" ++
          "\"formalCertificateRoot\":\"" ++
            URSM.Composite.phaseOneStaticComposite.formalCertificateRoot ++
            "\"," ++
          "\"logicalSide\":" ++
            toString URSM.Composite.projectCount ++ "," ++
          "\"schema\":\"mathematics.lean-composite-check/1\"," ++
          "\"status\":\"valid\"" ++
        "}\n"
  | _ =>
      throw <| IO.userError
        "usage: check_composite_manifest OUTPUT.json"
