package dto;

import lombok.*;

import java.util.ArrayList;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
public class Hotel {
    private String id;
    private String name;
    private int star;
    private ArrayList address;
    private boolean activeState;
    private ArrayList location;
    private String designation;
    private String type;
}
