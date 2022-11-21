package dto.response;

import dto.Hotel;
import lombok.*;

import java.util.ArrayList;
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
public class DataResponse {
    private long dataCount;
    private ArrayList<Hotel> hotels;
}
